class RecuriementsController < ApplicationController
  before_action :set_recuriement, only: %i[ show edit update destroy ]

  # GET /recuriements or /recuriements.json
  def index
    @recuriements = Recuriement.all
  end

  # GET /recuriements/1 or /recuriements/1.json
  def show
  end

  # GET /recuriements/new
  def new
    @recuriement = Recuriement.new
  end

  # GET /recuriements/1/edit
  def edit
  end

  # POST /recuriements or /recuriements.json
  def create
    @recuriement = Recuriement.new(recuriement_params)

    respond_to do |format|
      if @recuriement.save
        format.html { redirect_to recuriement_url(@recuriement), notice: "Recuriement was successfully created." }
        format.json { render :show, status: :created, location: @recuriement }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @recuriement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recuriements/1 or /recuriements/1.json
  def update
    respond_to do |format|
      if @recuriement.update(recuriement_params)
        format.html { redirect_to recuriement_url(@recuriement), notice: "Recuriement was successfully updated." }
        format.json { render :show, status: :ok, location: @recuriement }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @recuriement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recuriements/1 or /recuriements/1.json
  def destroy
    @recuriement.destroy

    respond_to do |format|
      format.html { redirect_to recuriements_url, notice: "Recuriement was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recuriement
      @recuriement = Recuriement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def recuriement_params
      params.require(:recuriement).permit(:first_name, :last_name, :email, :phone)
    end
end
