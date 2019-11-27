class User < ApplicationRecord
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
	devise :database_authenticatable, :registerable,
	     :recoverable, :rememberable, :validatable
	mount_uploader :bukti_pembayaran, BuktiPembayaranUploader

	# https://github.com/plataformatec/devise/wiki/How-To:-Customize-user-account-status-validation-when-logging-in
	def active_for_authentication?
		#puts params(:user).inspect
		#puts :email.inspect
		#super && self.check_confirm(:email) # i.e. super && self.is_active
		super && confirm? # i.e. super && confirm di tabel user nilai boolean
	end

	def inactive_message
		"Maaf, akun ini belum aktif. Silahkan hubungi ke Administrator untuk mengaktifkan."
	end

	def check_confirm(email)
		confirm = User.where('email': email).pluck('confirm')
		puts confirm.inspect
		if confirm
			return true
		else
			return false
		end
	end 
end
