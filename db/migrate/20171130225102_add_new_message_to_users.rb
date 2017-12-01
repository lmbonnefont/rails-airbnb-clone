class AddNewMessageToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :new_message, :integer, default: 0
  end
end
