class FormulariosController < ApplicationController
	def index
		@formularios = Formulario.all
	end

	def show
		@formulario = Formulario.find(params[:id])
	end

	def new
		@formulario = Formulario.new
	end

	def edit
		@formulario = Formulario.find(params[:id])
	end

	def create
		@formulario = Formulario.new(formulario_params)
 		@formulario.save
 		redirect_to @formulario
	end

	def update
		@formulario = Formulario.find(params[:id])
		if  @formulario.update(formulario_params)
        	format.html { redirect_to @formulario, notice: 'Se actualizaron tus datos.' }
        	
      	else
        	format.html { render :edit }
        	
      	end
	end

	def destroy
		@formulario = Formulario.find(params[:id])
		@formulario.destroy
        respond_to do |format|
        format.html { redirect_to formulario_url, notice: 'Se borro la informacion' }
        end
	end	

	private
	def formulario_params
		params.require(:formulario).permit(:nombre_mama, :nombre_hijo, :edad_hijo, :direccion, :habilidades)
	end


end

