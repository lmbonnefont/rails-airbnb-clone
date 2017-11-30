class AddNewMessageToMessage < ActiveRecord::Migration[5.1]
  def change
    add_column :messages, :new_message, :text
  end
end
