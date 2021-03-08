class VotesController < ApplicationController
  def create
    @vote = current_user.votes.new(article_id: params[:article_id], category_id: params[:category_id])
    if @vote.save

      redirect_to category_path(@vote.category_id), notice: "You vote to \"#{@vote.article.title}\" article"
    else
      redirect_to category_path(@vote.category_id), notice: "Sorry you can't vote to #{@vote.article.title}"
    end
  end

  def destroy
    @vote = Vote.find_by(article_id: params[:article_id], user_id: current_user.id, category_id: params[:category_id])
    cat = @vote.category_id
    if @vote
      article = @vote.article.title
      redirect_to category_path(cat), notice: "You unvote to \"#{article}\" article"

      @vote.destroy

    else
      redirect_to category_path(@vote.category_id), alert: 'You cannot dislike post that you did not like before.'
    end
  end

  private

  def vote_params
    params.require(:vote).permit(:id, :article_id)
  end
end
