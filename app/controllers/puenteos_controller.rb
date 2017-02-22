class PuenteosController < ApplicationController
	
	def index
		@puenteo = Puenteo.all
	end

	def new
		@puenteo = Puenteo.new
	end

	def create
		@puenteo = Puenteo.new(puenteo_params)

		if @puenteo.save
			flash[:notice] = "Puenteo creado con exito"
			redirect_to @puenteo
		else
			flash[:alert] = "No se ha creado el puenteo"
			render "new"
		end
	end

	def edit
		@puenteo = Puenteo.find(params[:id])
	end

	def show
		@puenteo = Puenteo.find(params[:id])

	end

	def update
		@puenteo = Puenteo.find(params[:id])
		if @puenteo.update(puenteo_params)
			flash[:notice] = "Puenteo #{@puenteo.puenteo_id} actualizado con exito"
			redirect_to "/"
		else
			render "edit"
		end
	end

	private
		def puenteo_params
			params.require(:puenteo). permit(:puenteo_id, :descripcion)
		end
	
end
