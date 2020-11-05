class HashtagsController < ApplicationController
  def show
  end
  def index
    @hashtag = Hashtag.all
  end

  def new
  end

  def edit
  end
end
