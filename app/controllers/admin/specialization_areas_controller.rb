class Admin::SpecializationAreasController < ApplicationController
  before_action :set_specialization_area, only: [:show, :edit, :update, :destroy]

  # GET /specialization_areas
  # GET /specialization_areas.json
  def index
    @specialization_areas = SpecializationArea.all
  end

  # GET /specialization_areas/1
  # GET /specialization_areas/1.json
  def show
  end

  # GET /specialization_areas/new
  def new
    @specialization_area = SpecializationArea.new
  end

  # GET /specialization_areas/1/edit
  def edit
  end

  # POST /specialization_areas
  # POST /specialization_areas.json
  def create
    @specialization_area = SpecializationArea.new(specialization_area_params)

    respond_to do |format|
      if @specialization_area.save
        format.html { redirect_to admin_specialization_area_path(@specialization_area), notice: 'Specialization area was successfully created.' }
        format.json { render :show, status: :created, location: @specialization_area }
      else
        format.html { render :new }
        format.json { render json: @specialization_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /specialization_areas/1
  # PATCH/PUT /specialization_areas/1.json
  def update
    respond_to do |format|
      if @specialization_area.update(specialization_area_params)
        format.html { redirect_to admin_specialization_area_path(@specialization_area), notice: 'Specialization area was successfully updated.' }
        format.json { render :show, status: :ok, location: @specialization_area }
      else
        format.html { render :edit }
        format.json { render json: @specialization_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /specialization_areas/1
  # DELETE /specialization_areas/1.json
  def destroy
    @specialization_area.destroy
    respond_to do |format|
      format.html { redirect_to admin_specialization_areas_url, notice: 'Specialization area was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_specialization_area
      @specialization_area = SpecializationArea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def specialization_area_params
      params.require(:specialization_area).permit(:name, :description)
    end
end
