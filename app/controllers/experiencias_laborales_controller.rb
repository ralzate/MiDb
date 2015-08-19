class ExperienciasLaboralesController < ApplicationController
  before_action :set_experiencia_laboral, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @experiencias_laborales = ExperienciaLaboral.all
    respond_with(@experiencias_laborales)
  end

  def show
    respond_with(@experiencia_laboral)
  end

  def new
    @experiencia_laboral = ExperienciaLaboral.new
    respond_with(@experiencia_laboral)
  end

  def edit
  end

  def create
    @experiencia_laboral = ExperienciaLaboral.new(experiencia_laboral_params)
    @experiencia_laboral.save
    respond_with(@experiencia_laboral)
  end

  def update
    @experiencia_laboral.update(experiencia_laboral_params)
    respond_with(@experiencia_laboral)
  end

  def destroy
    @experiencia_laboral.destroy
    respond_with(@experiencia_laboral)
  end

  private
    def set_experiencia_laboral
      @experiencia_laboral = ExperienciaLaboral.find(params[:id])
    end

    def experiencia_laboral_params
      params.require(:experiencia_laboral).permit(:empresa, :cargo, :telefono, :fecha_incio, :fecha_terminacion, :usuario_id)
    end
end
