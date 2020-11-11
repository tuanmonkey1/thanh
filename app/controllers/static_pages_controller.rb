class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def iems
  end

  def order
  end

  def technology  	
  end

  def review
    if logged_in?
      @review = current_user.reviews.build
      @feed_items = current_user.feed.paginate(page: params[:page]).per_page(10)
    end
  end

  def products
  end
end
