class BxBlockBlogs::BlogsController < ApplicationController
  before_action :set_bx_block_blogs_blog, only: %i[ show edit update destroy ]

  # GET /bx_block_blogs/blogs or /bx_block_blogs/blogs.json
  def index
    @bx_block_blogs_blogs = BxBlockBlogs::Blog.all
  end

  # GET /bx_block_blogs/blogs/1 or /bx_block_blogs/blogs/1.json
  def show
  end

  # GET /bx_block_blogs/blogs/new
  def new
    @bx_block_blogs_blog = BxBlockBlogs::Blog.new
  end

  # GET /bx_block_blogs/blogs/1/edit
  def edit
  end

  # POST /bx_block_blogs/blogs or /bx_block_blogs/blogs.json
  def create
    @bx_block_blogs_blog = BxBlockBlogs::Blog.new(bx_block_blogs_blog_params)

    respond_to do |format|
      if @bx_block_blogs_blog.save
        format.html { redirect_to bx_block_blogs_blog_url(@bx_block_blogs_blog), notice: "Blog was successfully created." }
        format.json { render :show, status: :created, location: @bx_block_blogs_blog }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bx_block_blogs_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bx_block_blogs/blogs/1 or /bx_block_blogs/blogs/1.json
  def update
    respond_to do |format|
      if @bx_block_blogs_blog.update(bx_block_blogs_blog_params)
        format.html { redirect_to bx_block_blogs_blog_url(@bx_block_blogs_blog), notice: "Blog was successfully updated." }
        format.json { render :show, status: :ok, location: @bx_block_blogs_blog }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bx_block_blogs_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bx_block_blogs/blogs/1 or /bx_block_blogs/blogs/1.json
  def destroy
    @bx_block_blogs_blog.destroy

    respond_to do |format|
      format.html { redirect_to bx_block_blogs_blogs_url, notice: "Blog was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bx_block_blogs_blog
      @bx_block_blogs_blog = BxBlockBlogs::Blog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bx_block_blogs_blog_params
      params.require(:bx_block_blogs_blog).permit(:name, :title, :content)
    end
end
