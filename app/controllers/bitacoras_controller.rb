class BitacorasController < ApplicationController
	before_action :set_puenteo
	before_action :set_bitacora, only: [:show, :edit, :update, :destroy]

	def new
		@bitacora = @puenteo.bitacoras.build
	end

	def create
		@bitacora = @puenteo.bitacoras.build(bitacora_params)

		if @bitacora.save
			flash[:notice] = "Bitacora guardada"
			redirect_to [@puenteo, @bitacora]
		else

			flash.now[:alert] = "Bitacora no guardada"
			render "new"
		end
	end

	def show
		
	end

	private

	def set_puenteo
		@puenteo = Puenteo.find(params[:puenteo_id])
	end

	def set_bitacora
		@bitacora = @puenteo.bitacoras.find(params[:id])
	end

	def bitacora_params
		params.require(:bitacora) .permit(:accion, :descripcion)
	end
end
