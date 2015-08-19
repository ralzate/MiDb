class ExperienciasLaboralesController < ApplicationController
  before_action :set_experiencia_laboral, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @experiencias_laborales = ExperienciaLaboral.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @experiencias_laborales }
      end
  end

  def show
    experiencia_laboral = ExperienciaLaboral.find(params[:id])
  end

  def new
    @experiencia_laboral = ExperienciaLaboral.new
  end

  def edit
    @experiencia_laboral = ExperienciaLaboral.find(params[:id])
  end

  def create
    @experiencia_laboral = ExperienciaLaboral.new(experiencia_laboral_params)
    render :action => :new unless @experiencia_laboral.save
  end

  def update
    @experiencia_laboral = ExperienciaLaboral.find(params[:id])
    render :action => :edit unless @experiencia_laboral.update_attributes(experiencia_laboral_params)
  end
  
  def destroy
      @experiencia_laboral = ExperienciaLaboral.find(params[:id])
      @experiencia_laboral.destroy
  end

  private
    def set_experiencia_laboral
      @experiencia_laboral = ExperienciaLaboral.find(params[:id])
    end

    def experiencia_laboral_params
      params.require(:experiencia_laboral).permit(:empresa, :cargo, :telefono, :fecha_incio, :fecha_terminacion, :usuario_id)
    end
end
