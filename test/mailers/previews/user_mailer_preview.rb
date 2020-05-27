# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
  def user_deleted_mail_preview
    UserMailer.user_deleted_email(User.first.display_name, User.first.email)
  end
end
