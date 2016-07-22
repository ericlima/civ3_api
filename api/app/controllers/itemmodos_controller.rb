class ItemmodosController < ApplicationController
  before_action :set_itemmodo, only: [:show, :update, :destroy]

  # GET /itemmodos
  # GET /itemmodos.json
  def index
    @itemmodos = Itemmodo.all

    render json: @itemmodos
  end

  # GET /itemmodos/1
  # GET /itemmodos/1.json
  def show
    render json: @itemmodo
  end

  # POST /itemmodos
  # POST /itemmodos.json
  def create
    @itemmodo = Itemmodo.new(itemmodo_params)

    if @itemmodo.save
      render json: @itemmodo, status: :created, location: @itemmodo
    else
      render json: @itemmodo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /itemmodos/1
  # PATCH/PUT /itemmodos/1.json
  def update
    @itemmodo = Itemmodo.find(params[:id])

    if @itemmodo.update(itemmodo_params)
      head :no_content
    else
      render json: @itemmodo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /itemmodos/1
  # DELETE /itemmodos/1.json
  def destroy
    @itemmodo.destroy

    head :no_content
  end

  private

    def set_itemmodo
      @itemmodo = Itemmodo.find(params[:id])
    end

    def itemmodo_params
      params.require(:itemmodo).permit(:nome)
    end
end
