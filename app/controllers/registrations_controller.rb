# app/controllers/registrations_controller.rb
# import carrierwave
require 'carrierwave/orm/activerecord'

class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
    # add custom create logic here
    @user = User.new(user_params)
    @user.bukti_pembayaran = user_params[:bukti_pembayaran] # ambilnama file aja
    respond_to do |format|
      if @user.save
        format.html { redirect_to '/users/sign_in', notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: '/users/sign_in' }
      end
    end
  end

  def update
    super
  end

  private 
  	def user_params
  		params.require(:user).permit(:name, :email, :password, :nim, :bukti_pembayaran)
  	end
end 