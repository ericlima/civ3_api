class AssuntosController < ApplicationController
  before_action :set_assunto, only: [:show, :update, :destroy]

  # GET /assuntos
  # GET /assuntos.json
  def index
    @assuntos = Assunto.all

    render json: @assuntos
  end

  # GET /assuntos/1
  # GET /assuntos/1.json
  def show
    render json: @assunto
  end

  # POST /assuntos
  # POST /assuntos.json
  def create
    @assunto = Assunto.new(assunto_params)

    if @assunto.save
      render json: @assunto, status: :created, location: @assunto
    else
      render json: @assunto.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /assuntos/1
  # PATCH/PUT /assuntos/1.json
  def update
    @assunto = Assunto.find(params[:id])

    if @assunto.update(assunto_params)
      head :no_content
    else
      render json: @assunto.errors, status: :unprocessable_entity
    end
  end

  # DELETE /assuntos/1
  # DELETE /assuntos/1.json
  def destroy
    @assunto.destroy

    head :no_content
  end

  private

    def set_assunto
      @assunto = Assunto.find(params[:id])
    end

    def assunto_params
      params.require(:assunto).permit(:nome, :grupoassunto_id, :responsavel_id, :prazoqtd, :prazotipo)
    end
end
