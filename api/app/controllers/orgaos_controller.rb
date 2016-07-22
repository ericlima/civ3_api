class OrgaosController < ApplicationController
  before_action :set_orgao, only: [:show, :update, :destroy]

  # GET /orgaos
  # GET /orgaos.json
  def index
    @orgaos = Orgao.all

    render json: @orgaos
  end

  # GET /orgaos/1
  # GET /orgaos/1.json
  def show
    render json: @orgao
  end

  # POST /orgaos
  # POST /orgaos.json
  def create
    @orgao = Orgao.new(orgao_params)

    if @orgao.save
      render json: @orgao, status: :created, location: @orgao
    else
      render json: @orgao.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /orgaos/1
  # PATCH/PUT /orgaos/1.json
  def update
    @orgao = Orgao.find(params[:id])

    if @orgao.update(orgao_params)
      head :no_content
    else
      render json: @orgao.errors, status: :unprocessable_entity
    end
  end

  # DELETE /orgaos/1
  # DELETE /orgaos/1.json
  def destroy
    @orgao.destroy

    head :no_content
  end

  private

    def set_orgao
      @orgao = Orgao.find(params[:id])
    end

    def orgao_params
      params.require(:orgao).permit(:nome, :codigo, :responsavel_id)
    end
end
