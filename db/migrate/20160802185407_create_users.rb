class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :device_id, null: false

      t.timestamps
    end
  end
end
