class ReferenciasPersonalesController < ApplicationController
  before_action :set_referencias_personale, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @referencias_personales = ReferenciasPersonale.all
    respond_with(@referencias_personales)
  end

  def show
    respond_with(@referencias_personale)
  end

  def new
    @referencias_personale = ReferenciasPersonale.new
    respond_with(@referencias_personale)
  end

  def edit
  end

  def create
    @referencias_personale = ReferenciasPersonale.new(referencias_personale_params)
    @referencias_personale.save
    respond_with(@referencias_personale)
  end

  def update
    @referencias_personale.update(referencias_personale_params)
    respond_with(@referencias_personale)
  end

  def destroy
    @referencias_personale.destroy
    respond_with(@referencias_personale)
  end

  private
    def set_referencias_personale
      @referencias_personale = ReferenciasPersonale.find(params[:id])
    end

    def referencias_personale_params
      params.require(:referencias_personale).permit(:nombre, :telefono, :profesion, :usuario_id)
    end
end
