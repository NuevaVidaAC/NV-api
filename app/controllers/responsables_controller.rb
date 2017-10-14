class ResponsablesController < ApplicationController
  before_action :set_responsable, only: [:show, :update, :destroy]

  # GET /responsables
  def index
    @responsables = Responsable.all

    render json: @responsables
  end

  # GET /responsables/1
  def show
    render json: @responsable
  end

  # POST /responsables
  def create
    @responsable = Responsable.new(responsable_params)

    if @responsable.save
      render json: @responsable, status: :created, location: @responsable
    else
      render json: @responsable.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /responsables/1
  def update
    if @responsable.update(responsable_params)
      render json: @responsable
    else
      render json: @responsable.errors, status: :unprocessable_entity
    end
  end

  # DELETE /responsables/1
  def destroy
    @responsable.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_responsable
      @responsable = Responsable.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def responsable_params
      params.require(:responsable).permit(:name)
    end
end
