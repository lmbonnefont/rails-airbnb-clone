class AddBasketToProducts < ActiveRecord::Migration[5.1]
  def change
    add_reference :products, :basket, foreign_key: true
  end
end
