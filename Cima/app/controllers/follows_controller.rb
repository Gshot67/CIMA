class FollowsController < ApplicationController
  before_action :set_follow, only: %i[ show edit update destroy ]

  # GET /follows or /follows.json
  def index
    @follows = Follow.all
  end

  # GET /follows/1 or /follows/1.json
  def show
  end

  # GET /follows/new
  def new
    @follow = Follow.new
    us_follower = params[:follower]
    us_seguito = params[:seguito]
    @follow.follower = us_follower
    @follow.seguito = us_seguito
  end

  # GET /follows/1/edit
  def edit
  end

  # POST /follows or /follows.json
  def create
    @follow = Follow.new(follow_params)

    respond_to do |format|
      if @follow.save
        format.html { redirect_to info_user_path(user_id: User.find_by(id: Info.find_by(username: @follow.seguito).user_id).id) }
        format.json { render :show, status: :created, location: @follow }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @follow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /follows/1 or /follows/1.json
  def update
    respond_to do |format|
      if @follow.update(follow_params)
        format.html { redirect_to follow_url(@follow), notice: "Follow was successfully updated." }
        format.json { render :show, status: :ok, location: @follow }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @follow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /follows/1 or /follows/1.json
  def destroy
    @follow.destroy

    respond_to do |format|
      format.html {redirect_back(fallback_location: root_path) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_follow
      @follow = Follow.find_by(follower:  params[:follower], seguito: params[:seguito])
      if @follow.nil?
        redirect_back(fallback_location: root_path)
      end
    end

    # Only allow a list of trusted parameters through.
    def follow_params
      params.require(:follow).permit(:follower, :seguito)
    end
end
