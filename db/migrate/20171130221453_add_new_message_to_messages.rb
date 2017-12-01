class AddNewMessageToMessages < ActiveRecord::Migration[5.1]
  def change
    add_column :messages, :new_message, :integer, default: 0
  end
end
