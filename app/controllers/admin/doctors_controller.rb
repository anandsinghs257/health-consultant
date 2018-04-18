class Admin::DoctorsController < ApplicationController
  before_action :set_doctor, only: [:show, :edit, :update, :destroy]
  
  def index
    @doctors = Doctor.all
  end

  def show
  end

  def new
    @doctor = Doctor.new
  end

  def edit
  end

  def create
    @doctor = Doctor.new(doctor_params)

    respond_to do |format|
      if @doctor.save
        format.html { redirect_to admin_doctor_path(@doctor), notice: 'Doctor was successfully created.' }
        format.json { render :show, status: :created, location: admin_doctor_path(@doctor) }
      else
        format.html { render :new }
        format.json { render json: @doctor.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @doctor.update(doctor_params)
        format.html { redirect_to admin_doctor_path(@doctor), notice: 'Doctor was successfully updated.' }
        format.json { render :show, status: :ok, location: @doctor }
      else
        format.html { render :edit }
        format.json { render json: @doctor.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @doctor.destroy
    respond_to do |format|
      format.html { redirect_to admin_doctors_url, notice: 'Doctor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def add_specialization_to_doctor
    @doctor = Doctor.find(params[:doctor_id])
  end

  def create_specializations_for_doctor
    @doctor = Doctor.find(params[:specialization_area][:doctor_id])
    if params[:specialization_area][:specialization_area_ids].present? 
      params[:specialization_area][:specialization_area_ids].each do |i|
        @doctor.doctor_specializations.create(specialization_area_id: i)
      end
      redirect_to admin_doctor_path(@doctor), notice: 'Doctor was successfully updated.'
    end
  end

  private

    def set_doctor
      @doctor = Doctor.find(params[:id])
    end

    def doctor_params
      params.require(:doctor).permit(:first_name, :last_name, :address, :city, :state, :country, :zipcode, :latitude, :longitude, :contact, :profile_photo, :about, :age, :gender, morning_slots_attributes: [:id, :from,:to], afternoon_slots_attributes: [:id, :from,:to], evening_slots_attributes: [:id, :from,:to])
  
    end

  end
