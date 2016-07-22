class ProcessoassuntoitemsController < ApplicationController
  before_action :set_processoassuntoitem, only: [:show, :update, :destroy]

  # GET /processoassuntoitems
  # GET /processoassuntoitems.json
  def index
    @processoassuntoitems = Processoassuntoitem.all

    render json: @processoassuntoitems
  end

  # GET /processoassuntoitems/1
  # GET /processoassuntoitems/1.json
  def show
    render json: @processoassuntoitem
  end

  # POST /processoassuntoitems
  # POST /processoassuntoitems.json
  def create
    @processoassuntoitem = Processoassuntoitem.new(processoassuntoitem_params)

    if @processoassuntoitem.save
      render json: @processoassuntoitem, status: :created, location: @processoassuntoitem
    else
      render json: @processoassuntoitem.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /processoassuntoitems/1
  # PATCH/PUT /processoassuntoitems/1.json
  def update
    @processoassuntoitem = Processoassuntoitem.find(params[:id])

    if @processoassuntoitem.update(processoassuntoitem_params)
      head :no_content
    else
      render json: @processoassuntoitem.errors, status: :unprocessable_entity
    end
  end

  # DELETE /processoassuntoitems/1
  # DELETE /processoassuntoitems/1.json
  def destroy
    @processoassuntoitem.destroy

    head :no_content
  end

  private

    def set_processoassuntoitem
      @processoassuntoitem = Processoassuntoitem.find(params[:id])
    end

    def processoassuntoitem_params
      params.require(:processoassuntoitem).permit(:processoassunto_id, :nome, :descricao, :responsavel_id, :assunto_id, :itemtipo_id, :itemmodo_id)
    end
end
