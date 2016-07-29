class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.double :lat, null: false
      t.double :lng, null: false
      t.string :name, null: false
      t.string :description
      t.string :image, null: false
      t.string :open_time, null: false
      t.string :close_time
      t.string :price, null: false
      t.string :promo_text

      t.timestamps
    end
  end
end
