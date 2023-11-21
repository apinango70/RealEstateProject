class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.references :user, null: false, foreign_key: true
      t.references :type_offer, null: false, foreign_key: true
      t.references :type_property, null: false, foreign_key: true
      t.string :title
      t.text :description
      t.string :address
      t.string :city
      t.string :state
      t.string :neighborhood
      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :floors
      t.integer :garages
      t.integer :area
      t.integer :sale_or_rent_price

      t.timestamps
    end
  end
end
