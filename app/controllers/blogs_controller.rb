class BlogsController < ApplicationController
  def new
    @blog = Blog.new
  end

  def index
    @blogs = Blog.all
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def create
    @blog = Blog.new(blog_params)
    @blog.published_at = Time.zone.now

    if @blog.save
      flash[:success] = "Blog Post Added!"
      redirect_to blogs_url
    end
  end

  private

    def blog_params
      params.require(:blog).permit(:title, :post)
    end
end
