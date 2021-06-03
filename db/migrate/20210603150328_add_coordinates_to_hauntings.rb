class AddCoordinatesToHauntings < ActiveRecord::Migration[6.0]
  def change
    add_column :hauntings, :latitude, :float
    add_column :hauntings, :longitude, :float
  end
end
