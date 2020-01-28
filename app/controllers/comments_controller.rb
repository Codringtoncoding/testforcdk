class CommentsController < ApplicationController
  def create
    @issue = Issue.find(params[:issue_id])
    @comment = comment.new(comment_params)
    @comment.issue = @issue
    if @issue.save
      redirect_to issue_path(@issue)
    else
      render 'issue/show'
    end

  def show
    @issue = Issue.find(params[:id])
    @comment = Comment.new
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
