class EstudiosComplementariosController < ApplicationController
  before_action :set_estudios_complementario, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @estudios_complementarios = EstudiosComplementario.all
    respond_with(@estudios_complementarios)
  end

  def show
    respond_with(@estudios_complementario)
  end

  def new
    @estudios_complementario = EstudiosComplementario.new
    respond_with(@estudios_complementario)
  end

  def edit
  end

  def create
    @estudios_complementario = EstudiosComplementario.new(estudios_complementario_params)
    @estudios_complementario.save
    respond_with(@estudios_complementario)
  end

  def update
    @estudios_complementario.update(estudios_complementario_params)
    respond_with(@estudios_complementario)
  end

  def destroy
    @estudios_complementario.destroy
    respond_with(@estudios_complementario)
  end

  private
    def set_estudios_complementario
      @estudios_complementario = EstudiosComplementario.find(params[:id])
    end

    def estudios_complementario_params
      params.require(:estudios_complementario).permit(:nombre, :entidad, :fecha_terminacion, :intensidad_horaria, :usuario_id)
    end
end
