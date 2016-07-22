class DepartamentosController < ApplicationController
  before_action :set_departamento, only: [:show, :update, :destroy]

  # GET /departamentos
  # GET /departamentos.json
  def index
    @departamentos = Departamento.all

    render json: @departamentos
  end

  # GET /departamentos/1
  # GET /departamentos/1.json
  def show
    render json: @departamento
  end

  # POST /departamentos
  # POST /departamentos.json
  def create
    @departamento = Departamento.new(departamento_params)

    if @departamento.save
      render json: @departamento, status: :created, location: @departamento
    else
      render json: @departamento.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /departamentos/1
  # PATCH/PUT /departamentos/1.json
  def update
    @departamento = Departamento.find(params[:id])

    if @departamento.update(departamento_params)
      head :no_content
    else
      render json: @departamento.errors, status: :unprocessable_entity
    end
  end

  # DELETE /departamentos/1
  # DELETE /departamentos/1.json
  def destroy
    @departamento.destroy

    head :no_content
  end

  private

    def set_departamento
      @departamento = Departamento.find(params[:id])
    end

    def departamento_params
      params.require(:departamento).permit(:nome, :codigo, :orgao_id, :responsavel_id)
    end
end
