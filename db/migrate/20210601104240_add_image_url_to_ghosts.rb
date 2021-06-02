class AddImageUrlToGhosts < ActiveRecord::Migration[6.0]
  def change
    add_column :ghosts, :image_url, :string
  end
end
