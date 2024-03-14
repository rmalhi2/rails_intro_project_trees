class AddImageSrcToTrees < ActiveRecord::Migration[7.1]
  def change
    add_column :trees, :image_src, :string
  end
end
