class AddNimToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :nim, :string
  end
end
