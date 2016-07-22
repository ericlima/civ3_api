class ProcessoassuntoitemmovimentosController < ApplicationController
  before_action :set_processoassuntoitemmovimento, only: [:show, :update, :destroy]

  # GET /processoassuntoitemmovimentos
  # GET /processoassuntoitemmovimentos.json
  def index
    @processoassuntoitemmovimentos = Processoassuntoitemmovimento.all

    render json: @processoassuntoitemmovimentos
  end

  # GET /processoassuntoitemmovimentos/1
  # GET /processoassuntoitemmovimentos/1.json
  def show
    render json: @processoassuntoitemmovimento
  end

  # POST /processoassuntoitemmovimentos
  # POST /processoassuntoitemmovimentos.json
  def create
    @processoassuntoitemmovimento = Processoassuntoitemmovimento.new(processoassuntoitemmovimento_params)

    if @processoassuntoitemmovimento.save
      render json: @processoassuntoitemmovimento, status: :created, location: @processoassuntoitemmovimento
    else
      render json: @processoassuntoitemmovimento.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /processoassuntoitemmovimentos/1
  # PATCH/PUT /processoassuntoitemmovimentos/1.json
  def update
    @processoassuntoitemmovimento = Processoassuntoitemmovimento.find(params[:id])

    if @processoassuntoitemmovimento.update(processoassuntoitemmovimento_params)
      head :no_content
    else
      render json: @processoassuntoitemmovimento.errors, status: :unprocessable_entity
    end
  end

  # DELETE /processoassuntoitemmovimentos/1
  # DELETE /processoassuntoitemmovimentos/1.json
  def destroy
    @processoassuntoitemmovimento.destroy

    head :no_content
  end

  private

    def set_processoassuntoitemmovimento
      @processoassuntoitemmovimento = Processoassuntoitemmovimento.find(params[:id])
    end

    def processoassuntoitemmovimento_params
      params.require(:processoassuntoitemmovimento).permit(:processoassuntoitem_id, :descricao, :datasolicitacao, :dataatendimento, :responsavel_id)
    end
end
