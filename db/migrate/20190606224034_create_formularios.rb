class CreateFormularios < ActiveRecord::Migration[5.2]
  def change
    create_table :formularios do |t|
      t.string :nombre_mama
      t.string :nombre_hijo
      t.integer :edad
      t.text :direccion
      t.text :habilidades

      t.timestamps
    end
  end
end
