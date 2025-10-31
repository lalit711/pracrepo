class CommentsController < ApplicationController
  def create
    @cmt = Comment.new(comment_params)
    p = @cmt.product
    if @cmt.save
      redirect_to product_path(p),notice:"Comment was done succesfully "
    else
      redirect_to product_path(p),notice:"Comment was not done succesfully " 
    end
  end

  def comment_params
    params.require(:comment).permit(:body,:product_id,:user_id)
  end
end
