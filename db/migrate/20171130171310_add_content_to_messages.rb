class AddContentToMessages < ActiveRecord::Migration[5.1]
  def change
    add_column :messages, :content, :string, array: true
  end
end
