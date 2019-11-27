class AddBuktibayarToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :bukti_pembayaran, :string, default:""
  end
end
