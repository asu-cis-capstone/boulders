class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|

      t.timestamps null: false
    end
  end
end
