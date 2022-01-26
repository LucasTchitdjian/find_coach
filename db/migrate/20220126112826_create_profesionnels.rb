class CreateProfesionnels < ActiveRecord::Migration[6.1]
  def change
    create_table :profesionnels do |t|
      t.string :name
      t.string :adress
      t.string :category
      t.integer :tarif

      t.timestamps
    end
  end
end
