module ApplicationHelper

    def vote_unvote_btn(article)
        vote = Vote.find_by(article: article, user: current_user)
        if vote
          link_to('Vote!', vote_path(id: vote.id, article_id: article.id), method: :delete)
        else
          link_to('unvote!', vote_path(article_id: article.id), method: :post)
        end
    end
end
