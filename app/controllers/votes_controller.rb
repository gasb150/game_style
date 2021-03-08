# frozen_string_literal: true

class VotesController < ApplicationController
  def create
    @vote = current_user.votes.new(article_id: params[:article_id])
    if @vote.save
      redirect_to root_path,  notice: "You vote to \"#{@vote.article.title}\" article"
    else
      redirect_to root_path,  notice: "Sorry you can't vote to #{@vote.article.title}"
    end
  end

  def destroy
    vote = Vote.find_by(article_id: params[:article_id], user_id: current_user.id)
    if vote
      article = vote.article.title
      vote.destroy
      redirect_to root_path, notice: "You unvote to \"#{article}\" article"
    else
      redirect_to root_path, alert: 'You cannot dislike post that you did not like before.'
    end
  end

  private

  def vote_params
    params.require(:vote).permit(:id, :article_id)
  end
end
