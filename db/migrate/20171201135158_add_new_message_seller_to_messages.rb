class AddNewMessageSellerToMessages < ActiveRecord::Migration[5.1]
  def change
    add_column :messages, :new_message_seller, :integer, default: 0
    add_column :messages, :new_message_buyer, :integer, default: 0
  end
end
