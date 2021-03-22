class FbookingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_fbooking, only: %i[ show edit update destroy ]

  # GET /fbookings or /fbookings.json
  def index
    @fbookings = Fbooking.all
  end

  # GET /fbookings/1 or /fbookings/1.json
  def show
  end

  # GET /fbookings/new
  def new
    @fbooking = Fbooking.new
  end

  # GET /fbookings/1/edit
  def edit
  end

  # POST /fbookings or /fbookings.json
  def create
    @fbooking = Fbooking.new(fbooking_params)

    respond_to do |format|
      if @fbooking.save
        format.html { redirect_to @fbooking, notice: "Fbooking was successfully created." }
        format.json { render :show, status: :created, location: @fbooking }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fbooking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fbookings/1 or /fbookings/1.json
  def update
    respond_to do |format|
      if @fbooking.update(fbooking_params)
        format.html { redirect_to @fbooking, notice: "Fbooking was successfully updated." }
        format.json { render :show, status: :ok, location: @fbooking }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fbooking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fbookings/1 or /fbookings/1.json
  def destroy
    @fbooking.destroy
    respond_to do |format|
      format.html { redirect_to fbookings_url, notice: "Fbooking was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fbooking
      @fbooking = Fbooking.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fbooking_params
      params.require(:fbooking).permit(:name, :age, :gender)
    end
end
