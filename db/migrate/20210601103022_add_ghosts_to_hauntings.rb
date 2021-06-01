class AddGhostsToHauntings < ActiveRecord::Migration[6.0]
  def change
    add_reference :hauntings, :ghost, null: false, foreign_key: true
  end
end
