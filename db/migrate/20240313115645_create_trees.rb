class CreateTrees < ActiveRecord::Migration[7.1]
  def change
    create_table :trees do |t|
      t.string :botanical_name
      t.string :common_name
      t.decimal :diameter_at_breast_height
      t.string :location_class
      t.references :park, null: false, foreign_key: true
      t.references :neighbourhood, null: false, foreign_key: true

      t.timestamps
    end
  end
end
