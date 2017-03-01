class AddAdjuntoToBitacoras < ActiveRecord::Migration[5.0]
  def change
    add_column :bitacoras, :adjunto, :string
  end
end
