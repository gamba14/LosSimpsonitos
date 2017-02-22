class CreatePuenteos < ActiveRecord::Migration[5.0]
  def change
    create_table :puenteos do |t|

      t.timestamps
      t.string :puenteo_id
      t.string :descripcion
      t.string :pdf_dir
      
    end
  end
end
