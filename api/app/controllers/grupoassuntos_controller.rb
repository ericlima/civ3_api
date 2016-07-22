class GrupoassuntosController < ApplicationController
  before_action :set_grupoassunto, only: [:show, :update, :destroy]

  # GET /grupoassuntos
  # GET /grupoassuntos.json
  def index
    @grupoassuntos = Grupoassunto.all

    render json: @grupoassuntos
  end

  # GET /grupoassuntos/1
  # GET /grupoassuntos/1.json
  def show
    render json: @grupoassunto
  end

  # POST /grupoassuntos
  # POST /grupoassuntos.json
  def create
    @grupoassunto = Grupoassunto.new(grupoassunto_params)

    if @grupoassunto.save
      render json: @grupoassunto, status: :created, location: @grupoassunto
    else
      render json: @grupoassunto.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /grupoassuntos/1
  # PATCH/PUT /grupoassuntos/1.json
  def update
    @grupoassunto = Grupoassunto.find(params[:id])

    if @grupoassunto.update(grupoassunto_params)
      head :no_content
    else
      render json: @grupoassunto.errors, status: :unprocessable_entity
    end
  end

  # DELETE /grupoassuntos/1
  # DELETE /grupoassuntos/1.json
  def destroy
    @grupoassunto.destroy

    head :no_content
  end

  private

    def set_grupoassunto
      @grupoassunto = Grupoassunto.find(params[:id])
    end

    def grupoassunto_params
      params.require(:grupoassunto).permit(:nome, :descricao)
    end
end
