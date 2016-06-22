class CommentsController < ApplicationController
  def create
    @article = Article.find_by_id(params[:comment][:article])
    @user = current_user
    if @user
      @comment = @article.comments.build(user:@user, content:params[:comment][:content])
      respond_to do |format|
        if @comment.save
          format.html { redirect_to @article, notice: 'Comment was successfully created.' }
          format.json { render :show, status: :created, location: @article }
        else
          format.html { redirect_to @article, notice: 'Comment was failed.' }
          format.json { render json: @article.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to home_url
    end
  end

  def show

  end


  private
  # Use callbacks to share common setup or constraints between actions.


  # Never trust parameters from the scary internet, only allow the white list through.
  def comment_params
    params.require(:comment).permit(:article, :content)
  end
end
