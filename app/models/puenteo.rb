class Puenteo < ActiveRecord::Base
	validates :puenteo_id, presence: true
	validates :descripcion, presence: true
	validates :descripcion, length: { minimum: 10 }
end
