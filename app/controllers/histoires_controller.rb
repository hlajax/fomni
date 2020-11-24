class HistoiresController < ApplicationController
  before_action :set_histoire, only: [:show, :edit, :update, :destroy]

  # GET /histoires
  # GET /histoires.json
  def index
    @histoires = Histoire.all
  end

  # GET /histoires/1
  # GET /histoires/1.json
  def show
  end

  # GET /histoires/new
  def new
    @histoire = Histoire.new
  end

  # GET /histoires/1/edit
  def edit
  end

  # POST /histoires
  # POST /histoires.json
  def create
    @histoire = Histoire.new(histoire_params)

    respond_to do |format|
      if @histoire.save
        format.html { redirect_to @histoire, notice: 'Histoire was successfully created.' }
        format.json { render :show, status: :created, location: @histoire }
      else
        format.html { render :new }
        format.json { render json: @histoire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /histoires/1
  # PATCH/PUT /histoires/1.json
  def update
    respond_to do |format|
      if @histoire.update(histoire_params)
        format.html { redirect_to @histoire, notice: 'Histoire was successfully updated.' }
        format.json { render :show, status: :ok, location: @histoire }
      else
        format.html { render :edit }
        format.json { render json: @histoire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /histoires/1
  # DELETE /histoires/1.json
  def destroy
    @histoire.destroy
    respond_to do |format|
      format.html { redirect_to histoires_url, notice: 'Histoire was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_histoire
      @histoire = Histoire.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def histoire_params
      params.require(:histoire).permit(:titre, :contenu)
    end
end
