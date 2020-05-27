class UserMailer < ApplicationMailer
  default from: 'from@example.com'

  def delete_user_email(display_name, email_address)
    @display_name = display_name
    @email_address = email_address
    mail(to: @email_address, subject: 'Account deletion')
  end
end
