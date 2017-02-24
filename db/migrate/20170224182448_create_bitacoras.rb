class CreateBitacoras < ActiveRecord::Migration[5.0]
  def change
    create_table :bitacoras do |t|
      t.string :accion
      t.text :descripcion
      t.references :puenteo, foreign_key: true

      t.timestamps
    end
  end
end
