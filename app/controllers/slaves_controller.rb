class SlavesController < ApplicationController
  before_action :set_slafe, only: [:show, :edit, :update, :destroy]

  # GET /slaves
  # GET /slaves.json
  def index
    @slaves = Slave.all
  end

  # GET /slaves/1
  # GET /slaves/1.json
  def show
  end

  # GET /slaves/new
  def new
    @slafe = Slave.new
  end

  # GET /slaves/1/edit
  def edit
  end

  # POST /slaves
  # POST /slaves.json
  def create
    @slafe = Slave.new(slafe_params)

    respond_to do |format|
      if @slafe.save
        format.html { redirect_to @slafe, notice: 'Slave was successfully created.' }
        format.json { render :show, status: :created, location: @slafe }
      else
        format.html { render :new }
        format.json { render json: @slafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /slaves/1
  # PATCH/PUT /slaves/1.json
  def update
    respond_to do |format|
      if @slafe.update(slafe_params)
        format.html { redirect_to @slafe, notice: 'Slave was successfully updated.' }
        format.json { render :show, status: :ok, location: @slafe }
      else
        format.html { render :edit }
        format.json { render json: @slafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /slaves/1
  # DELETE /slaves/1.json
  def destroy
    @slafe.destroy
    respond_to do |format|
      format.html { redirect_to slaves_url, notice: 'Slave was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_slafe
      @slafe = Slave.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def slafe_params
      params.require(:slafe).permit(:name, :fill_murray, :place_cage, :custom_header, :custom_header)
    end
end
