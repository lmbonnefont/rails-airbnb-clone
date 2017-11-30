class AddUserToBaskets < ActiveRecord::Migration[5.1]
  def change
    add_reference :baskets, :user, foreign_key: true
  end
end
