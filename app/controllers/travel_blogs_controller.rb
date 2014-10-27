class TravelBlogsController < ApplicationController
  before_action :set_travel_blog, only: [:show, :edit, :update, :destroy]

  def index
    @travel_blogs = TravelBlog.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 6)
   end

  def show
    @travel_blog = TravelBlog.find(params[:id])
  end

  def new
    @travel_blog = TravelBlog.new
  end

  def edit
  end

  def create
    @travel_blog = TravelBlog.new(travel_blog_params)
    if @travel_blog.save
      redirect_to root_path
    end
  end

  def update
    if @travel_blog.update(travel_blog_params)
    redirect_to root_path, notice: 'Blog was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @travel_blog.destroy
    redirect_to root_path
  end

  private
    def set_travel_blog
      @travel_blog = TravelBlog.find(params[:id])
    end

    def travel_blog_params
      params.require(:travel_blog).permit(:title, :paragraph1, :paragraph2, :paragraph3, :paragraph4, :image)
    end
end
