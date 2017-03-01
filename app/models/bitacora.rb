class Bitacora < ActiveRecord::Base
  belongs_to :puenteo
  mount_uploader :adjunto, AdjuntoUploader
end
