# # rubocop:disable Style/GuardClause, Metrics/PerceivedComplexity

 module ApplicationHelper

  def create_article(article)
   if current_user.nil?
    controller.redirect_to root_path
   else
    list = "<div class='new-article cl-lg'>"
    list +="<h1>New Article</h1>"
    list += render 'form', article: @article
    list += link_to 'Back', root_path
    list += "</div>"
   end
   list.html_safe
   end







   def edit_article(article)
    if current_user.nil?
      controller.redirect_to root_path
     else
      list = "<div class='new-article cl-lg'>"
    list +="<h1>Editing Article</h1>"
    list += render 'form', article: @article
    list += link_to 'Back', root_path
    list += "</div>"
     end
     end
  end
# # rubocop:enable Style/GuardClause, Metrics/PerceivedComplexity
