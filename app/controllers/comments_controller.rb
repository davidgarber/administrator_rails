class CommentsController < ApplicationController
  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new
    respond_to do |format|
			format.html
			format.js
    end
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    @comments = @post.comments
      respond_to do |format|
    if @comment.save
        format.html {redirect_to post_path(@post)}
        format.js
    else
      render :new
      end
    end
  end

  def edit
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
  end

  def update
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      redirect_to post_path(@comment.post)
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
      redirect_to post_path(@comment.post)
    end

private
  def comment_params
    params.require(:comment).permit(:name, :comment)
  end
end
