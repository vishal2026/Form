class UserMailer < ApplicationMailer
  def confirmation_email
    @user = params[:user]
    mail(to: @user.email, subject: 'Account Confirmation')
  end
end

