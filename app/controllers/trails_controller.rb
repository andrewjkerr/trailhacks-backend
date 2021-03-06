class TrailsController < ApplicationController
  before_action :set_trail, only: [:show, :update, :destroy]
  before_action :verify_user, only: [:show]
  before_action :verify_admin_user, only: [:index, :create, :update, :delete]

  # GET /trails
  def index
    @trails = Trail.all

    render json: @trails
  end

  # GET /trails/1
  def show
    render json: @trail
  end

  # POST /trails
  def create
    @trail = Trail.new(trail_params)

    if @trail.save
      render json: @trail, status: :created, location: @trail
    else
      render json: @trail.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /trails/1
  def update
    if @trail.update(trail_params)
      render json: @trail
    else
      render json: @trail.errors, status: :unprocessable_entity
    end
  end

  # DELETE /trails/1
  def destroy
    @trail.destroy
  end

  # GET /trails/1/markers
  def markers
    @markers = Marker.where(trail_id: params[:id])

    render json: @markers
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trail
      @trail = Trail.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def trail_params
      params.permit(:name, :beacon_number)
    end
end
