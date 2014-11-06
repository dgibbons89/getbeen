class DisplayController < ApplicationController
	def index
		@eat_blogs = EatBlog.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 1)
		@drink_blogs = DrinkBlog.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 1)
		@travel_blogs = TravelBlog.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 1)
		@news_blogs = NewsBlog.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 1)
		@guest = Guest.new
	end

  
end
