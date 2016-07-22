class ProcessosController < ApplicationController
  before_action :set_processo, only: [:show, :update, :destroy]

  # GET /processos
  # GET /processos.json
  def index
    @processos = Processo.all

    render json: @processos
  end

  # GET /processos/1
  # GET /processos/1.json
  def show
    render json: @processo
  end

  # POST /processos
  # POST /processos.json
  def create
    @processo = Processo.new(processo_params)

    if @processo.save
      render json: @processo, status: :created, location: @processo
    else
      render json: @processo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /processos/1
  # PATCH/PUT /processos/1.json
  def update
    @processo = Processo.find(params[:id])

    if @processo.update(processo_params)
      head :no_content
    else
      render json: @processo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /processos/1
  # DELETE /processos/1.json
  def destroy
    @processo.destroy

    head :no_content
  end

  private

    def set_processo
      @processo = Processo.find(params[:id])
    end

    def processo_params
      params.require(:processo).permit(:nomero, :orgao_id, :ano, :responsavel_id)
    end
end
