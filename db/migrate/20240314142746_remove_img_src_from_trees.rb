class RemoveImgSrcFromTrees < ActiveRecord::Migration[7.1]
  def change
    remove_column :trees, :img_src, :string
  end
end
