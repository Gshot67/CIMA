class InfosController < ApplicationController
  before_action :set_info, only: %i[ show edit update destroy ]

  # GET /infos or /infos.json
  def index
    @infos = Info.all
  end

  # GET /infos/1 or /infos/1.json
  def show
    ruolorender
    @posts = Post.all
  end

  # GET /infos/new
  def new
    @info = Info.new
    @info.user_id = current_user.id
  end

  # GET /infos/1/edit
  def edit
  end

  # POST /infos or /infos.json
  def create
    @info = Info.new(info_params)
    respond_to do |format|
      if @info.save
        format.html { redirect_to home_path, notice: "Info was successfully created." }
        format.json { render :show, status: :created, location: @info }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /infos/1 or /infos/1.json
  def update
    respond_to do |format|
      if @info.update(info_params)
        format.html { redirect_to info_url(@info), notice: "Info was successfully updated." }
        format.json { render :show, status: :ok, location: @info }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /infos/1 or /infos/1.json
  def destroy
    @info.destroy

    respond_to do |format|
      format.html { redirect_to infos_url, notice: "Info was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_info
      id = params[:user_id]
      @info = Info.where(user_id: id).first
    end

    # Only allow a list of trusted parameters through.
    def info_params
      params.require(:info).permit(:user_id, :username, :nome, :foto, :bio, :certificazione, :tipo)
    end  
    
    def ruolorender
      if @info.tipo == 0
       @ruolo = "Community Member"
  
      elsif @info.tipo == 1
        @ruolo = "Journalist"
        
      else
        @ruolo = "Certified Association"
      end
  
    end
end
