class BlogsController < ApplicationController
  def new
  end

  def index
    @blogs = Blog.all
  end

  def show
  end
end
