class SendUserDeletedEmailJob < ApplicationJob
  queue_as :default

  def perform(display_name, email_address)
    UserMailer.delete_user_email(display_name, email_address).deliver_later
  end
end
