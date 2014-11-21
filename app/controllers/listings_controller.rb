class ListingsController < ApplicationController
  has_scope :starts_with

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    if @listing.save!
      flash[:success] = "Your listing has been added!"
      redirect_to listing_path(@listing)
    else 
      redirect_to edit_listing_path(@listing)
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
      redirect_to listing_path(@listing)
    else 
      redirect_to edit_listing_path(@listing)
      flash[:error] = "Invalid Listing. Please Try Again"
    end
  end

  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy!
  end

  # index of all listings
  def index
    #@listings = Listing.paginate(:page => params[:page], :per_page => 2 )
    @params = params.slice(:starts_with)
    @listings = apply_scopes(Listing).all.paginate(:page => params[:page], :per_page => 2 )
  end

  # show
  def show
    @listing = Listing.find(params[:id])
  end

  private

    def listing_params 
      params.require(:listing).permit(:length_in_days, :coach_id, :information, :title)
    end
end
