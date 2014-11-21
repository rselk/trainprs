class RegistrationsController < Devise::RegistrationsController
  def coachinfo
    @user = current_user
  end

  def update
    redirect_to 'http://google.ca'
  end

  def edit 
    redirect_to 'http://google.ca'
  end

  protected

  # Devise: Where to redirect users once they have signed up
  # We will redirect to the edit path so that they can add more information to their profile
  def after_sign_up_path_for(resource)
    user_path
  end
end
