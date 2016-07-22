class ResponsavelsController < ApplicationController
  #before_action :set_responsavel, only: [:show, :update, :destroy]

  # GET /responsavels
  # GET /responsavels.json
  def index
    @responsavels = Responsavel.all

    render json: @responsavels
  end

  # GET /responsavels/1
  # GET /responsavels/1.json
  def show
    render json: @responsavel
  end

  # POST /responsavels
  # POST /responsavels.json
  def create
    @responsavel = Responsavel.new(responsavel_params)

    if @responsavel.save
      render json: @responsavel, status: :created, location: @responsavel
    else
      render json: @responsavel.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /responsavels/1
  # PATCH/PUT /responsavels/1.json
  def update
    @responsavel = Responsavel.find(params[:id])

    if @responsavel.update(responsavel_params)
      head :no_content
    else
      render json: @responsavel.errors, status: :unprocessable_entity
    end
  end

  # DELETE /responsavels/1
  # DELETE /responsavels/1.json
  def destroy
    @responsavel.destroy

    head :no_content
  end

  private

    def set_responsavel
      @responsavel = Responsavel.find(params[:id])
    end

    def responsavel_params
      params.require(:responsavel).permit(:nome, :cpf, :email, :GeoSiapID)
    end
end
