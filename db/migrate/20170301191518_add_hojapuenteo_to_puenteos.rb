class AddHojapuenteoToPuenteos < ActiveRecord::Migration[5.0]
  def change
    add_column :puenteos, :hojapuenteo, :string
  end
end
