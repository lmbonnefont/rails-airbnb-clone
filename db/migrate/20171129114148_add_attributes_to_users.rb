class AddAttributesToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :age, :integer
    add_column :users, :profil_picture, :string
    add_column :users, :company_name, :string
    add_column :users, :failure_history, :text
  end
end
