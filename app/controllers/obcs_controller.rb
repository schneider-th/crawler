class ObcsController < ApplicationController
  before_action :set_obc, only: [:show, :edit, :update, :destroy]

  # GET /obcs
  # GET /obcs.json
  def index
    @obcs = Obc.all
  end

  # GET /obcs/1
  # GET /obcs/1.json
  def show
  end

  # GET /obcs/new
  def new
    @obc = Obc.new
  end

  # GET /obcs/1/edit
  def edit
  end

  # POST /obcs
  # POST /obcs.json
  def create
    @obc = Obc.new(obc_params)

    respond_to do |format|
      if @obc.save
        format.html { redirect_to @obc, notice: 'Obc was successfully created.' }
        format.json { render :show, status: :created, location: @obc }
      else
        format.html { render :new }
        format.json { render json: @obc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /obcs/1
  # PATCH/PUT /obcs/1.json
  def update
    respond_to do |format|
      if @obc.update(obc_params)
        format.html { redirect_to @obc, notice: 'Obc was successfully updated.' }
        format.json { render :show, status: :ok, location: @obc }
      else
        format.html { render :edit }
        format.json { render json: @obc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /obcs/1
  # DELETE /obcs/1.json
  def destroy
    @obc.destroy
    respond_to do |format|
      format.html { redirect_to obcs_url, notice: 'Obc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_obc
      @obc = Obc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def obc_params
      params.require(:obc).permit(:landingpage, :first_level)
    end
end
