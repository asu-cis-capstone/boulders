class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.text :description
      t.decimal :price, precision: 12, scale: 2

      t.timestamps null: false
    end
  end
end
