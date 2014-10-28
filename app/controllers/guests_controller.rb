class GuestsController < ApplicationController
	
	def index
		  authorize! :index, @guest, :message => 'Not authorized as an administrator.'
    @guests = Guest.all
  end
	 def 

  def new
  	@guest = Guest.new
  end

  def create
    @guest = Guest.new(guest_params)
    if @guest.save
      flash[:success] = "Welcome! "
      redirect_to root_path
    else
      render 'new'
    end
  end

   private
    def guest_params
      params.require(:guest).permit(:email)
    end
end
