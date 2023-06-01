class BxBlockPosts::PostsController < ApplicationController
  before_action :set_bx_block_posts_post, only: %i[ show edit update destroy ]

  # GET /bx_block_posts/posts or /bx_block_posts/posts.json
  def index
    @bx_block_posts_posts = BxBlockPosts::Post.all
  end

  # GET /bx_block_posts/posts/1 or /bx_block_posts/posts/1.json
  def show
  end

  # GET /bx_block_posts/posts/new
  def new
    @bx_block_posts_post = BxBlockPosts::Post.new
  end

  # GET /bx_block_posts/posts/1/edit
  def edit
  end

  # POST /bx_block_posts/posts or /bx_block_posts/posts.json
  def create
    @bx_block_posts_post = BxBlockPosts::Post.new(bx_block_posts_post_params)

    respond_to do |format|
      if @bx_block_posts_post.save
        format.html { redirect_to bx_block_posts_post_url(@bx_block_posts_post), notice: "Post was successfully created." }
        format.json { render :show, status: :created, location: @bx_block_posts_post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bx_block_posts_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bx_block_posts/posts/1 or /bx_block_posts/posts/1.json
  def update
    respond_to do |format|
      if @bx_block_posts_post.update(bx_block_posts_post_params)
        format.html { redirect_to bx_block_posts_post_url(@bx_block_posts_post), notice: "Post was successfully updated." }
        format.json { render :show, status: :ok, location: @bx_block_posts_post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bx_block_posts_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bx_block_posts/posts/1 or /bx_block_posts/posts/1.json
  def destroy
    @bx_block_posts_post.destroy

    respond_to do |format|
      format.html { redirect_to bx_block_posts_posts_url, notice: "Post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bx_block_posts_post
      @bx_block_posts_post = BxBlockPosts::Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bx_block_posts_post_params
      params.require(:bx_block_posts_post).permit(:name, :title, :content)
    end
end
