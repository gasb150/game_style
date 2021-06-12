class ProyectsController < ApplicationController
  before_action :set_proyect, only: %i[ show edit update destroy ]

  # GET /proyects or /proyects.json
  def index
    @proyects = Proyect.all
  end

  # GET /proyects/1 or /proyects/1.json
  def show
  end

  # GET /proyects/new
  def new
    @proyect = Proyect.new
  end

  # GET /proyects/1/edit
  def edit
  end

  # POST /proyects or /proyects.json
  def create
    @proyect = Proyect.new(proyect_params)

    respond_to do |format|
      if @proyect.save
        format.html { redirect_to @proyect, notice: "Proyect was successfully created." }
        format.json { render :show, status: :created, location: @proyect }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @proyect.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proyects/1 or /proyects/1.json
  def update
    respond_to do |format|
      if @proyect.update(proyect_params)
        format.html { redirect_to @proyect, notice: "Proyect was successfully updated." }
        format.json { render :show, status: :ok, location: @proyect }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @proyect.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proyects/1 or /proyects/1.json
  def destroy
    @proyect.destroy
    respond_to do |format|
      format.html { redirect_to proyects_url, notice: "Proyect was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proyect
      @proyect = Proyect.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def proyect_params
      params.require(:proyect).permit(:name, :framework_id, :language_id, :skill_id, :other, :imageurl, :live_url, :source_url)
    end
end
