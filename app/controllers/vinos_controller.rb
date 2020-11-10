class VinosController < ApplicationController
  before_action :set_vino, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /vinos
  # GET /vinos.json
  def index
    @vinos = Vino.all
  end

  # GET /vinos/1
  # GET /vinos/1.json
  def show
  end

  # GET /vinos/new
  def new
    @vino = Vino.new
    @vino_enologos = VinoEnologo.new
  end

  # GET /vinos/1/edit
  def edit
  end

  # POST /vinos
  # POST /vinos.json
  def create
    @vino = Vino.new(vino_params)
    #@vino_enologo = VinoEnologo.new(nota: params[:vino_enologo][:nota])

    respond_to do |format|
      if @vino.save
        # @vino_enologo.nota 
        # @vino_enologo.save!
        # @vino.save!
        format.html { redirect_to @vino, notice: 'Vino was successfully created.' }
        format.json { render :show, status: :created, location: @vino }
      else
        format.html { render :new }
        format.json { render json: @vino.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vinos/1
  # PATCH/PUT /vinos/1.json
  def update
    respond_to do |format|
      if @vino.update(vino_params)
        format.html { redirect_to @vino, notice: 'Vino was successfully updated.' }
        format.json { render :show, status: :ok, location: @vino }
      else
        format.html { render :edit }
        format.json { render json: @vino.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vinos/1
  # DELETE /vinos/1.json
  def destroy
    @vino.destroy
    respond_to do |format|
      format.html { redirect_to vinos_url, notice: 'Vino was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vino
      @vino = Vino.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vino_params
      params.require(:vino).permit(:nombre, { cepa_ids: []}, { enologo_ids: []}, :nota)
    end
end
