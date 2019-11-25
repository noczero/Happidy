class CreateMateris < ActiveRecord::Migration[6.0]
  def change
    create_table :materis do |t|
      t.string :judul
      t.text :deskripsi
      t.string :namafile

      t.timestamps
    end
  end
end
