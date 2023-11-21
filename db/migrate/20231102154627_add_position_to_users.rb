class AddPositionToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :position, null: false, foreign_key: true
  end
end
