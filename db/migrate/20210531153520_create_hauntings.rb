class CreateHauntings < ActiveRecord::Migration[6.0]
  def change
    create_table :hauntings do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.string :location

      t.timestamps
    end
  end
end
