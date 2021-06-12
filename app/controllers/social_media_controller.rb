class SocialMediaController < ApplicationController
  before_action :set_social_medium, only: %i[ show edit update destroy ]

  # GET /social_media or /social_media.json
  def index
    @social_media = SocialMedium.all
  end

  # GET /social_media/1 or /social_media/1.json
  def show
  end

  # GET /social_media/new
  def new
    @social_medium = SocialMedium.new
  end

  # GET /social_media/1/edit
  def edit
  end

  # POST /social_media or /social_media.json
  def create
    @social_medium = SocialMedium.new(social_medium_params)

    respond_to do |format|
      if @social_medium.save
        format.html { redirect_to @social_medium, notice: "Social medium was successfully created." }
        format.json { render :show, status: :created, location: @social_medium }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @social_medium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /social_media/1 or /social_media/1.json
  def update
    respond_to do |format|
      if @social_medium.update(social_medium_params)
        format.html { redirect_to @social_medium, notice: "Social medium was successfully updated." }
        format.json { render :show, status: :ok, location: @social_medium }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @social_medium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /social_media/1 or /social_media/1.json
  def destroy
    @social_medium.destroy
    respond_to do |format|
      format.html { redirect_to social_media_url, notice: "Social medium was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_social_medium
      @social_medium = SocialMedium.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def social_medium_params
      params.require(:social_medium).permit(:name, :url)
    end
end
