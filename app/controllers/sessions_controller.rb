class SessionsController < ApplicationController
 
  def new
  end

  def create
  	if(params[:provider] == "facebook")
  		user_name = params[:name]
  		user_id = params[:user_id]
  		@user = User.find_by provider: params[:provider], uid: user_id
  		if @user.nil?
  			@user = User.create name: user_name, provider: params[:provider], 
  				uid: user_id, password: "123456", password_confirmation: "123456", 
  				email: "#{user_id}@whatever.com"
  		end
  		log_in(@user)
  		# redirect_to root_url
  	else
  		user = User.find_by(email: params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])
			log_in user
			params[:session][:remember_me] == '1' ? remember(user) : forget(user)
			redirect_to root_url
		else
			flash.now[:danger] = 'Invalid email/password combination'
			render 'new'
		end
  	end
	# user = User.find_by(email: params[:session][:email].downcase)
	# if user && user.authenticate(params[:session][:password])
	# 	log_in user
	# 	params[:session][:remember_me] == '1' ? remember(user) : forget(user)
	# 	redirect_to root_url
	# else
	# 	flash.now[:danger] = 'Invalid email/password combination'
	# 	render 'new'
	# end
	#   auth_hash = request.env['omniauth.auth']

	#   if session[:user_id]
	#     # Means our user is signed in. Add the authorization to the user
	#     User.find(session[:user_id]).add_provider(auth_hash)

	#     render :text => "You can now login using #{auth_hash["provider"].capitalize} too!"
	#   else
	#     # Log him in or sign him up
	#     auth = Authorization.find_or_create(auth_hash)

	#     # Create the session
	#     session[:user_id] = auth.user.id

	#     render :text => "Welcome #{auth.user.name}!"
	#   end
  end

  def destroy
	log_out
	redirect_to root_url
  end

  def failure
  	render :text => "Sorry, but you didn't allow access to our app!"
  end
end