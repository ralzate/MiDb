class ProfesionesUsuariosController < ApplicationController
  before_action :set_profesiones_usuario, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @profesiones_usuarios = ProfesionesUsuario.all
    respond_with(@profesiones_usuarios)
  end

  def show
    respond_with(@profesiones_usuario)
  end

  def new
    @profesiones_usuario = ProfesionesUsuario.new
    respond_with(@profesiones_usuario)
  end

  def edit
  end

  def create
    @profesiones_usuario = ProfesionesUsuario.new(profesiones_usuario_params)
    @profesiones_usuario.save
    respond_with(@profesiones_usuario)
  end

  def update
    @profesiones_usuario.update(profesiones_usuario_params)
    respond_with(@profesiones_usuario)
  end

  def destroy
    @profesiones_usuario.destroy
    respond_with(@profesiones_usuario)
  end

  private
    def set_profesiones_usuario
      @profesiones_usuario = ProfesionesUsuario.find(params[:id])
    end

    def profesiones_usuario_params
      params.require(:profesiones_usuario).permit(:usuario_id, :profesion_id)
    end
end
