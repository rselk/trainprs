class ProfileController < ApplicationController
  def show 
    @user = User.find(params[:id])
  end

  def update
    @user = current_user
    if @user.save
      redirect_to p_path(@user)
    end
  end

    private

    def user_params
      params.require(:user).permit(:name, :email, :password, :bio, :location)
    end

    def update_params
      params.require(:user).permit(:name, :email, :password, :bio, :location)
    end
end
