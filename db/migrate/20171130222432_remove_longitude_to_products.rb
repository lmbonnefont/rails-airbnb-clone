class RemoveLongitudeToProducts < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :longitude
  end
end
