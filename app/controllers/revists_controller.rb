class RevistsController < ApplicationController
  before_action :set_revist, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /revists
  # GET /revists.json
  def index
    @revists = Revist.all
  end

  # GET /revists/1
  # GET /revists/1.json
  def show
  end

  # GET /revists/new
  def new
    @revist = Revist.new
  end

  # GET /revists/1/edit
  def edit
  end

  # POST /revists
  # POST /revists.json
  def create
    @revist = Revist.new(revist_params)

    respond_to do |format|
      if @revist.save
        format.html { redirect_to @revist, notice: 'Revist was successfully created.' }
        format.json { render :show, status: :created, location: @revist }
      else
        format.html { render :new }
        format.json { render json: @revist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /revists/1
  # PATCH/PUT /revists/1.json
  def update
    respond_to do |format|
      if @revist.update(revist_params)
        format.html { redirect_to @revist, notice: 'Revist was successfully updated.' }
        format.json { render :show, status: :ok, location: @revist }
      else
        format.html { render :edit }
        format.json { render json: @revist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /revists/1
  # DELETE /revists/1.json
  def destroy
    @revist.destroy
    respond_to do |format|
      format.html { redirect_to revists_url, notice: 'Revist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_revist
      @revist = Revist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def revist_params
      params.require(:revist).permit(:nombre)
    end
end
