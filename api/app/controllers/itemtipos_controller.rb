class ItemtiposController < ApplicationController
  before_action :set_itemtipo, only: [:show, :update, :destroy]

  # GET /itemtipos
  # GET /itemtipos.json
  def index
    @itemtipos = Itemtipo.all

    render json: @itemtipos
  end

  # GET /itemtipos/1
  # GET /itemtipos/1.json
  def show
    render json: @itemtipo
  end

  # POST /itemtipos
  # POST /itemtipos.json
  def create
    @itemtipo = Itemtipo.new(itemtipo_params)

    if @itemtipo.save
      render json: @itemtipo, status: :created, location: @itemtipo
    else
      render json: @itemtipo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /itemtipos/1
  # PATCH/PUT /itemtipos/1.json
  def update
    @itemtipo = Itemtipo.find(params[:id])

    if @itemtipo.update(itemtipo_params)
      head :no_content
    else
      render json: @itemtipo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /itemtipos/1
  # DELETE /itemtipos/1.json
  def destroy
    @itemtipo.destroy

    head :no_content
  end

  private

    def set_itemtipo
      @itemtipo = Itemtipo.find(params[:id])
    end

    def itemtipo_params
      params.require(:itemtipo).permit(:nome)
    end
end
