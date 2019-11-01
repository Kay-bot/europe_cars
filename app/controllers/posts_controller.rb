class PostsController < ApplicationController

  # GET /posts
  def index
    @posts = Post.all
  end

  # GET /posts/new
  def new
    if current_user 
    @post = Post.new
    else 
      redirect_to '/login'
    end
  end

  # POST /posts
  def create
    if current_user 
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    @post.save
    redirect_to @post, :notice => 'Post was successfully created'
    else 
      redirect_to '/login'
    end
  end

  # GET /posts/1
  def show
      @post = Post.find(params[:id])
     
  end

  # GET /posts/1/edit
  def edit
    @post = Post.find(params[:id])
  end

  # DELETE /posts/1
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to @post, :notice => 'Your post was deleted'
  end

  # PATCH/PUT /posts/1
  def update
    @post = Post.find(params[:id])

    @post.update(post_params)
    redirect_to @post, :notice => 'Post was successfully updated.'
       
  end

  
    private 
    def post_params
      params.require(:post).permit(:name, :title, :content, :image, :body_long)
    end

end
