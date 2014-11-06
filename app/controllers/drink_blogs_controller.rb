class DrinkBlogsController < ApplicationController
  before_action :set_drink_blog, only: [:show, :edit, :update, :destroy]

  def index
    @drink_blogs = DrinkBlog.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 6)
    @guest = Guest.new
  end

  def show
    @drink_blog = DrinkBlog.find(params[:id])
  end

  def new
    authorize! :new, @drink_blog, :message => 'Not authorized as an administrator.'
    @drink_blog = DrinkBlog.new
  
  end

  def edit
  end

  def create
    @drink_blog = DrinkBlog.new(drink_blog_params)
    if @drink_blog.save
       redirect_to root_path
    end
  end

  def update
    if @drink_blog.update(drink_blog_params)
    redirect_to root_path, notice: "Blog was updated"
  else
    render action: "edit"
  end
end

  def destroy
    @drink_blog.destroy
    respond_with(@drink_blog)
  end

  private
    def set_drink_blog
      @drink_blog = DrinkBlog.find(params[:id])
    end

    def drink_blog_params
      params.require(:drink_blog).permit(:title, :paragraph1, :paragraph2, :paragraph3, :paragraph4, :image)
    end
end
