class EatBlogsController < ApplicationController
  before_action :set_eat_blog, only: [:show, :edit, :update, :destroy]

  def index
    @eat_blogs = EatBlog.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 6)
    @guest = Guest.new
  end

  def show
    @eat_blog = EatBlog.find(params[:id])
  end

  def new
    authorize! :new, @eat_blog, :message => 'Not authorized as an administrator.'
    @eat_blog = EatBlog.new
    
  end

  def edit
  end

  def create
    @eat_blog = EatBlog.new(eat_blog_params)
    if @eat_blog.save
      redirect_to root_path
    end
  end

  def update
    if @eat_blog.update(eat_blog_params)
    redirect_to root_path, notice: "Blog was updated"
  else
    render action: "edit"
  end
end

  def destroy
    @eat_blog.destroy
    redirect_to root_path
  end

  private
    def set_eat_blog
      @eat_blog = EatBlog.find(params[:id])
    end

    def eat_blog_params
      params.require(:eat_blog).permit(:title, :paragraph1, :paragraph2, :paragraph3, :paragraph4, :image)
    end
end