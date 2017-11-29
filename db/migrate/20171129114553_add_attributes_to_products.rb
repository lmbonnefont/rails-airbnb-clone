class AddAttributesToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :quick_description , :string
    add_column :products, :title, :string
    add_column :products, :category, :string
  end
end
