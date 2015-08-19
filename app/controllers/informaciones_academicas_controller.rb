class InformacionesAcademicasController < ApplicationController
  before_action :set_informacion_academica, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @informaciones_academicas = InformacionAcademica.all
    respond_with(@informaciones_academicas)
  end

  def show
    respond_with(@informacion_academica)
  end

  def new
    @informacion_academica = InformacionAcademica.new
    respond_with(@informacion_academica)
  end

  def edit
  end

  def create
    @informacion_academica = InformacionAcademica.new(informacion_academica_params)
    @informacion_academica.save
    respond_with(@informacion_academica)
  end

  def update
    @informacion_academica.update(informacion_academica_params)
    respond_with(@informacion_academica)
  end

  def destroy
    @informacion_academica.destroy
    respond_with(@informacion_academica)
  end

  private
    def set_informacion_academica
      @informacion_academica = InformacionAcademica.find(params[:id])
    end

    def informacion_academica_params
      params.require(:informacion_academica).permit(:tipo_de_dato, :nombre, :fecha_terminacion, :titulo_obtenido, :usuario_id)
    end
end
