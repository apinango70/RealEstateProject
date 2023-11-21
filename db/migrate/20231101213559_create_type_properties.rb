class CreateTypeProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :type_properties do |t|
      t.string :name

      t.timestamps
    end
  end
end
