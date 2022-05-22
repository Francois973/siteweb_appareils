class CreateAppareils < ActiveRecord::Migration[7.0]
  def change
    create_table :appareils do |t|
      t.string :nom
      t.string :caracteristiques
      t.string :auteur

      t.timestamps
    end
  end
end
