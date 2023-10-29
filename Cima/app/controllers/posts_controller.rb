class PostsController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy ]

  # GET /posts or /posts.json
  def index
    @posts = Post.all
  end

  # GET /posts/1 or /posts/1.json
  def show
    @user = @post.user_id
    @info = Info.find_by(user_id: @user)
    @username = @info.username 
    @comments = Comment.where(post_id: @post)
  end

  # GET /posts/new
  def new
    @post = Post.new
    @type_request = params[:tor].to_i
    if @type_request == 1
      @author = params[:author]
      @title = params[:title]
      @content = params[:content]
      @topic = params[:topic]
    end

    if params[:user_id] && params[:editoriale]
      @post.user_id = params[:user_id]
      @originalpost = Post.find(params[:editoriale])
      @post.editoriale = params[:editoriale]
      @post.titolo = @originalpost.titolo
      @post.topic = @originalpost.topic

      @ouser = @originalpost.user_id
      @oinfo = Info.find_by(user_id: @ouser)
      @ousername = @oinfo.username       
    end
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts or /posts.json
  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to feed_path}
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def segnala
    @post = Post.find(params[:id])
    Segnalazione.create(post_id: @post.id)
    redirect_to @post
  end
  

  # PATCH/PUT /posts/1 or /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to post_url(@post), notice: "Post was successfully updated." }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1 or /posts/1.json
  def destroy
    @post.destroy

    respond_to do |format|
      format.html { redirect_to posts_url, notice: "Post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:user_id, :tag, :topic, :content, :titolo, :fonte_esterna, :lingua, :editoriale)
    end
end
