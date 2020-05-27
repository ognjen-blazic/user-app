class RegistrationsController < Devise::RegistrationsController
  def create
    super do
      set_display_name(params)
    end
  end

  def update
    super do
      set_display_name(params)
    end
  end

  def destroy
    # storing user data here before deletion, cause afterwards, during job execution, user is already deleted
    display_name = @user.display_name
    email_address = @user.email
    super do
      SendUserDeletedEmailJob.set(wait: 5.seconds).perform_later(display_name, email_address)
    end
  end

  private
    def set_display_name(params)
      resource.display_name = "#{params[:user][:first_name]} #{params[:user][:last_name]}"
      resource.save
    end
end