class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :street_1
      t.string :street_2
      t.references :user

      t.timestamps
    end
  end
end
