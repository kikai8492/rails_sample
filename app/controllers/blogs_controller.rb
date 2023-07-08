class BlogsController < ApplicationController

  def index
    @blogs = Blog.all #Blogの中にあるすべてのレコードを出力します
    binding.pry
  end

  def new
    @blog = Blog.new
  end

  def create 
    # Blog.create(params. require(:blog).permit(:title, :content))
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to new_blog_path, notice: "ブログを作成しました！"
    else
      render :new
    end
  end

  def show
    @blog = Blog.find(params[:id])
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :content)
  end
  
end





