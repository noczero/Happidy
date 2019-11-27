class PagesController < ApplicationController

  before_action :authenticate_user!

  before_action :set_materi, only: [:show, :edit, :update, :destroy] # konfigurasi method di materi
  
  def home
  	# lempar data materi ke home
  	@materis = Materi.all
  end

  def manage_user
  	@users = User.where.not(admin: 2) # getsemua user kecuali admin buat konfirmasi pembayaran
  end


  # proses konfirmasi user di laman manage_user
  def konfirmasi_user
  	@user = User.find(params[:id_user])
  	#puts params.insuyypect
  	respond_to do |format|
  		if @user.update('confirm': true)
	      	format.html { redirect_to konfirmasi_pembayaran_path, notice: 'User dikonfirmasi, silahkan login untuk mengakses.' }
	      	format.json { render :show, status: :ok, location: konfirmasi_pembayaran_path}
	    else 
	    	format.html { redirect_to konfirmasi_pembayaran_path, notice: 'User gagal dikonfirmasi, silahkan coba lagi.' }
	       	format.json { render :show, status: :ok, location: konfirmasi_pembayaran_path}
	    end
    end
  end

end
