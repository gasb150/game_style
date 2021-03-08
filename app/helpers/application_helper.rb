# rubocop:disable Style/GuardClause
module ApplicationHelper
  def vote_unvote_btn(article, category)
    unless current_user.nil?
      vote = Vote.find_by(article: article, user: current_user)
      if vote
        link_to('Unvote!', article_vote_path(id: vote.id, article_id: article.id, category_id: category),
                method: :delete, class: 'cl-yl')

      else
        link_to('Vote!',
                article_votes_path(article_id: article.id, user_id: current_user.id, category_id: category),
                method: :post, class: 'cl-yl')
      end
    end
  end
end
# rubocop:enable Style/GuardClause
