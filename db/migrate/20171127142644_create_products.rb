class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.integer :price
      t.text :description
      t.boolean :availability
      t.string :address
      t.string :photo

      t.timestamps
    end
  end
end
