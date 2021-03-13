# rubocop:disable Style/GuardClause

module VotesHelper
  def most_voted(most_voted)
    list = ''
    unless most_voted.nil?
      list += "<div class='background' style= 'background-image: linear-gradient(
            rgba(0, 0, 0, 0.3),
            rgba(0, 0, 0, 0.3)
          ), url(\"#{article_image(most_voted)}\")'> <ul>"
      list += "<h2 class='cl-og'> #{most_voted.title} </h2>"
      list += "<p class='cl-lg'> #{truncate(most_voted.text, length: 250)} </p>"
      list += '</ul> </div>'
    end
    list.html_safe
  end

  def vote_unvote_btn(article, category, hos)
    unless current_user.nil?
      @vote = Vote.find_by(article: article, user: current_user)
      if @vote
        vote_unvote(article, category, hos)

      else
        vote_vote(article, category, hos)
      end

    end
  end

  def vote_unvote(article, category, hos)
    list = "<span class='iconify cl-yl' data-icon='ic:baseline-check-box' data-inline='false'></span>"
    list + if hos.zero?
             link_to('Unvote!', article_vote_path(id: @vote.id, article_id: article.id, category_id: category),
                     method: :delete, class: 'cl-yl unvote_show').to_s
           else
             link_to('Unvote!', article_vote_path(id: @vote.id, article_id: article.id, category_id: category),
                     method: :delete, class: 'cl-yl unvote_hide').to_s
           end
  end
end

def vote_vote(article, category, hos)
  list = "<span class='iconify cl-yl' data-icon='ic:baseline-check-box-outline-blank'"
  list += " data-inline='false'> </span>"
  list + if hos.zero?
           link_to('Vote me!',
                   article_votes_path(article_id: article.id, user_id: current_user.id, category_id: category),
                   method: :post, class: 'cl-yl vote_show').to_s
         else
           link_to('Vote me!',
                   article_vote_path(article_id: article.id, user_id: current_user.id, category_id: category),
                   method: :post, class: 'cl-yl vote_hide').to_s
         end
end
# rubocop:enable Style/GuardClause
