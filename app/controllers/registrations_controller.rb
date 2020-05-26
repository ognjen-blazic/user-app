class RegistrationsController < Devise::RegistrationsController
  def create
    super do
      resource.display_name = "#{params[:user][:first_name]} #{params[:user][:last_name]}"
      resource.save
    end
  end

  def update
    super do
      resource.display_name = "#{params[:user][:first_name]} #{params[:user][:last_name]}"
      resource.save
    end
  end
end