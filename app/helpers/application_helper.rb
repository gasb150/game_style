module ApplicationHelper
def most_voted(most_voted)
  
  if !most_voted.nil?
    list = "<div class='background' style= 'background-image: linear-gradient(
      rgba(0, 0, 0, 0.7), 
      rgba(0, 0, 0, 0.7)
    ), url(\"#{cloudinary_url(most_voted.image.key, options = {})}\")'>"
    list += "<ul>"
    list += "<h2 class='cl-og'> #{most_voted.title} </h2>"
    #list += "<img src =\"#{cloudinary_url(most_voted.image.key, options = {})}\" </img>"
    list += "<p class='cl-lg'> #{most_voted.text} </p>" 
    list += "</ul>"
    list += "</div>"
  end
  
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
