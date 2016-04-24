class MarkersController < ApplicationController
  before_action :set_marker, only: [:show, :update, :destroy]
  before_action :verify_user, only: [:show]
  before_action :verify_admin_user, only: [:create, :update, :delete]

  # GET /markers
  def index
    @markers = Marker.all

    render json: @markers
  end

  # GET /markers/1
  def show
    render json: @marker
  end

  # POST /markers
  def create
    @marker = Marker.new(marker_params)

    if @marker.save
      render json: @marker, status: :created, location: @marker
    else
      render json: @marker.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /markers/1
  def update
    if @marker.update(marker_params)
      render json: @marker
    else
      render json: @marker.errors, status: :unprocessable_entity
    end
  end

  # DELETE /markers/1
  def destroy
    @marker.destroy
  end

  private
    def set_trail
      @trail = Trail.find(params[:trail_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_marker
      @marker = Marker.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def marker_params
      params.permit(:name,
                    :latitude,
                    :longitude,
                    :summary,
                    :trail_id,
                    :beacon_number)
    end
end
