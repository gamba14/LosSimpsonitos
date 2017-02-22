class RemovePuenteodescripcionFromPuenteos < ActiveRecord::Migration[5.0]
  def change
    remove_column :puenteos, :puenteodescripcion, :string
  end
end
