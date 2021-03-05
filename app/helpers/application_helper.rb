module ApplicationHelper
def most_voted(most_voted)
  list = "<ul>"
  if !most_voted.nil?
    list += "<h2> #{most_voted.title} </h2>"
    list += "<img src =\"#{cloudinary_url(most_voted.image.key, options = {})}\" </img>"
  end
  list += "</ul>"
  list.html_safe
end
    def vote_unvote_btn(article, category)
        vote = Vote.find_by(article: article, user: current_user)
        if vote
          link_to('Unvote!', article_vote_path(id: vote.id, article_id: article.id, category_id: category), method: :delete)
        
        else
          link_to('Vote!', article_votes_path(article_id: article.id, user_id: current_user.id, category_id: category), method: :post)
        end
    end
  
end
