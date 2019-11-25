json.extract! materi, :id, :judul, :deskripsi, :namafile, :created_at, :updated_at
json.url materi_url(materi, format: :json)
