class TimelinePointsController < ApplicationController
  before_action :set_timeline_point, only: %i[ show edit update destroy ]

  # GET /timeline_points or /timeline_points.json
  def index
    @timeline_points = TimelinePoint.all
  end

  # GET /timeline_points/1 or /timeline_points/1.json
  def show
  end

  # GET /timeline_points/new
  def new
    @timeline_point = TimelinePoint.new
  end

  # GET /timeline_points/1/edit
  def edit
  end

  # POST /timeline_points or /timeline_points.json
  def create
    @timeline_point = TimelinePoint.new(timeline_point_params)

    respond_to do |format|
      if @timeline_point.save
        format.html { redirect_to timeline_point_url(@timeline_point), notice: "Timeline point was successfully created." }
        format.json { render :show, status: :created, location: @timeline_point }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @timeline_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /timeline_points/1 or /timeline_points/1.json
  def update
    respond_to do |format|
      if @timeline_point.update(timeline_point_params)
        format.html { redirect_to timeline_point_url(@timeline_point), notice: "Timeline point was successfully updated." }
        format.json { render :show, status: :ok, location: @timeline_point }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @timeline_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /timeline_points/1 or /timeline_points/1.json
  def destroy
    @timeline_point.destroy

    respond_to do |format|
      format.html { redirect_to timeline_points_url, notice: "Timeline point was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_timeline_point
      @timeline_point = TimelinePoint.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def timeline_point_params
      params.require(:timeline_point).permit(:name, :description)
    end
end
