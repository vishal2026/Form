class UserController < ApplicationController
  
  # index method to display form
  def index
  
  	@user = User.new
  
  end
  
  # view method used for displaying form details which user submitted
  def view
  @user = User.new(user_params)
    if @user.save
	    @country=Country.find_by(id: @user.country)
	    @city=City.find_by(id: @user.city)
	    render "view"
    else 
      render "index"  
    end
  end

  # email method used for sending email
  def email

    id = params[:id]
    @user = User.find_by(id: id)
    @country=Country.find_by(id: @user.country)
    @city=City.find_by(id: @user.city)
    @confirmation_alert="Confirmation Email Has Been Sent You Successfully. Kindly Check."
    UserMailer.with(user: @user).confirmation_email.deliver_now
    render "view"
    
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name,:email, :country_id, :city_id, :email_confirmation)
  end

  # show_cities method  used for dynamically loading cities list with an ajax call
  def show_cities
    @cities = City.where("country_id = ?", params[:country_id])
    render json: @cities
    
  end

end
