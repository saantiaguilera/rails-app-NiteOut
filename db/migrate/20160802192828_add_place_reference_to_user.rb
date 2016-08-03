class AddPlaceReferenceToUser < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :place, index: true, foreign_key: true
  end
end
