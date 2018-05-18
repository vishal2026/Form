class UserMailer < ApplicationMailer
  def confirmation_email
    @user = params[:user]
    @country = params[:country]
    @city = params[:city]

    mail(to: @user.email, subject: 'Account Confirmation')
  end
end

