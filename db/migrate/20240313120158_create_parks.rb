class CreateParks < ActiveRecord::Migration[7.1]
  def change
    create_table :parks do |t|
      t.string :park_name

      t.timestamps
    end
  end
end
