class CreateLocations < ActiveRecord::Migration[7.1]
  def change
    create_table :locations do |t|
      t.decimal :latitude
      t.decimal :longitude
      t.references :tree, null: false, foreign_key: true

      t.timestamps
    end
  end
end
