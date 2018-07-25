class KhachesController < ApplicationController
  before_action :set_khach, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token

  # GET /khaches
  # GET /khaches.json
  def index
    @khaches = Khach.all
    @khach = Khach.new
  end

  # GET /khaches/1
  # GET /khaches/1.json
  def show
  end

  def delete_khach
    @khach = Khach.find(params[:khach_id])
    @khach.destroy
    # @success = "ok"
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  # GET /khaches/new
  def new
    @khach = Khach.new
  end

  # GET /khaches/1/edit
  def edit
  end

  # POST /khaches
  # POST /khaches.json
  def create
    @khach = Khach.new(khach_params)

    respond_to do |format|
      if @khach.save
        format.html { redirect_to khaches_url }
        format.json { render :show, status: :created, location: @khach }
      else
        format.html { render :new }
        format.json { render json: @khach.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /khaches/1
  # PATCH/PUT /khaches/1.json
  def update
    respond_to do |format|
      if @khach.update(khach_params)
        format.html { redirect_to @khach, notice: 'Khach was successfully updated.' }
        format.json { render :show, status: :ok, location: @khach }
      else
        format.html { render :edit }
        format.json { render json: @khach.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /khaches/1
  # DELETE /khaches/1.json
  def destroy
    @khach.destroy
    respond_to do |format|
      format.html { redirect_to khaches_url, notice: 'Khach was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_khach
      @khach = Khach.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def khach_params
      params.require(:khach).permit(:ten, :tuoi, :diachi)
    end
end
