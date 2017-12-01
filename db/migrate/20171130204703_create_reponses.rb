class CreateReponses < ActiveRecord::Migration[5.1]
  def change
    create_table :reponses do |t|
      t.references :message, foreign_key: true
      t.references :user, foreign_key: true
      t.text :texte

      t.timestamps
    end
  end
end
