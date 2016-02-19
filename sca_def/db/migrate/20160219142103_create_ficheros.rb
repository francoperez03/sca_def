class CreateFicheros < ActiveRecord::Migration
  def change
    create_table :ficheros do |t|
      t.string :Nombre
      t.integer :Edad
      t.boolean :Casado
      t.date :Fecha
      t.time :Hora

      t.timestamps null: false
    end
  end
end
