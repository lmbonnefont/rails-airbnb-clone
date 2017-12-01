class RemoveContentFromMessage < ActiveRecord::Migration[5.1]
  def change
    remove_column :messages, :content
  end
end
