class Materi < ApplicationRecord
	# tambahkan ini untuk file uploading, nama file itu attribute dan FileMateriUploader itu classuploaders
	mount_uploader :namafile, FileMateriUploader 
end
