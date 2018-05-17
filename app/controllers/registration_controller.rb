class RegistrationController < ApplicationController
  
  def index
  	@user = User.new
  end

  def view
	@user=User.new(user_params)
    if @user.save
	    @country=Country.find_by(id: @user.country)
	    @city=City.find_by(id: @user.city)
	    render "view"
    else 
      render "index"  
    end
  end
  def email
    id=params[:id]
    @user=User.find_by(id: id)
    UserMailer.with(user: @user).confirmation_email.deliver_now
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name,:email, :country_id, :city_id, :email_confirmation)
  end

  def show_cities
    @cities = City.where("country_id = ?", params[:country_id])
    render json: @cities
    
  end

end
