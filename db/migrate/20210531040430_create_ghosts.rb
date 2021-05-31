class CreateGhosts < ActiveRecord::Migration[6.0]
  def change
    create_table :ghosts do |t|
      t.string :name
      t.string :era
      t.string :category
      t.text :description
      t.integer :price
      t.integer :rating

      t.timestamps
    end
  end
end
