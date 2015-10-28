class CreateBeerMakers < ActiveRecord::Migration
  def change
    create_table :beer_makers do |t|
      t.string :name
      t.string :location
      t.date :date_of_founding

      t.timestamps null: false
    end
  end
end
