class AddDetailsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :role, :integer
    add_column :users, :phone, :string
    add_column :users, :website, :string
    add_column :users, :description, :text
  end
end
