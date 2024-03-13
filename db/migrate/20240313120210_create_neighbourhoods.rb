class CreateNeighbourhoods < ActiveRecord::Migration[7.1]
  def change
    create_table :neighbourhoods do |t|
      t.string :neighbourhood_name

      t.timestamps
    end
  end
end
