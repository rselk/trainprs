class RegistrationsController < Devise::RegistrationsController
  def coachinfo
    @user = current_user
  end

  protected

  # Devise: Where to redirect users once they have signed up
  # We will redirect to the edit path so that they can add more information to their profile
  def after_sign_up_path_for(resource)
    user_path
  end
end
