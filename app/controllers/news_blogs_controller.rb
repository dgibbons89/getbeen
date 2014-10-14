class NewsBlogsController < ApplicationController
  before_action :set_news_blog, only: [:show, :edit, :update, :destroy]

  def index
    @news_blogs = NewsBlog.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 6)
  end

  def show
    @news_blog = NewsBlog.find(params[:id])
  end

  def new
    @news_blog = NewsBlog.new
    
  end

  def edit
  end

  def create
    @news_blog = NewsBlog.new(news_blog_params)
    if @news_blog.save
      redirect_to root_path
    end
  end

  def update
    if @news_blog.update(news_blog_params)
    redirect_to root_path, notice: "Blog was updated"
  else
    render action: "edit"
  end
end

  def destroy
    @news_blog.destroy
    redirect_to root_path
  end

  private
    def set_news_blog
      @news_blog = NewsBlog.find(params[:id])
    end

    def news_blog_params
      params.require(:news_blog).permit(:title, :paragraph1, :paragraph2, :paragraph3, :paragraph4)
    end
end
