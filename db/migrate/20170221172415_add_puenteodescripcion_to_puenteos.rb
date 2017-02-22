class AddPuenteodescripcionToPuenteos < ActiveRecord::Migration[5.0]
  def change
    add_column :puenteos, :puenteodescripcion, :string
  end
end
