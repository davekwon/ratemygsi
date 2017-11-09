class GsisController < ApplicationController
  before_action :set_gsi, only: [:show, :edit, :update, :destroy]

  # GET /gsis
  # GET /gsis.json
  def index
    @gsis = Gsi.all
  end

  # GET /gsis/1
  # GET /gsis/1.json
  def show
  end

  # GET /gsis/new
  def new
    @gsi = Gsi.new
  end

  # GET /gsis/1/edit
  def edit
  end

  # POST /gsis
  # POST /gsis.json
  def create
    @gsi = Gsi.new(gsi_params)

    respond_to do |format|
      if @gsi.save
        format.html { redirect_to @gsi, notice: 'Gsi was successfully created.' }
        format.json { render :show, status: :created, location: @gsi }
      else
        format.html { render :new }
        format.json { render json: @gsi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gsis/1
  # PATCH/PUT /gsis/1.json
  def update
    respond_to do |format|
      if @gsi.update(gsi_params)
        format.html { redirect_to @gsi, notice: 'Gsi was successfully updated.' }
        format.json { render :show, status: :ok, location: @gsi }
      else
        format.html { render :edit }
        format.json { render json: @gsi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gsis/1
  # DELETE /gsis/1.json
  def destroy
    @gsi.destroy
    respond_to do |format|
      format.html { redirect_to gsis_url, notice: 'Gsi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gsi
      @gsi = Gsi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gsi_params
      params.require(:gsi).permit(:name, :course, :rating, :comment)
    end
end
