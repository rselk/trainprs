class ListingsController < ApplicationController

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    if @listing.save!
      flash[:success] = "Your listing has been added!"
      redirect_to p_path(current_user) #eventually to this listing
    else 
      redirect_to p_path(current_user)
      flash[:error] = "Invalid Listing. Please Try Again"
    end
  end

  def edit
    # todo
  end

  def update
    @listing = Listing.find(params[:id])
    if @listing.save!
      flash[:success] = "Your listing has been updated!"
      redirect_to p_path(current_user) #eventually to this listing
    else 
      redirect_to p_path(current_user)
      flash[:error] = "Invalid Listing. Please Try Again"
    end
  end

  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy!
  end

  # index of all listings
  def index
  end

  # show
  def show
    @listing = Listing.find(params[:id])
  end

  private

    def listing_params 
      params.require(:listing).permit(:length_in_days, :coach_id, :information)
    end
end
