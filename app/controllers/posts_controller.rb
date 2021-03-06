class PostsController < ApplicationController
  helper_method :search

  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def search
   #debugger
    @q = "%#{params[:query]}%"
    @posts = Post.where("title ILIKE ? or content ILIKE ?", @q, @q)
    #@channels = Channel.joins(:posts).where(:posts => {:id => @posts.map{|x| x.id}}).distinct
    #@npos = Npo.all
    render 'index'
  end

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
    #@posts = Post.all(channel_id: params[:channel_id])
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end


  # GET /posts/new
  def new
    @post = Post.new(channel_id: params[:channel_id],user_id: params[:user_id])
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)
    #@post.user = current_user
    #@post = current_user.posts.build(params[:post])

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:channel_id,:title, :content,:user_id)
    end
end

