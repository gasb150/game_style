# rubocop:disable Style/GuardClause
module ApplicationHelper
  def create_article(_article)
    list = ''
    if current_user.nil?
      controller.redirect_to root_path
    else
      list += render 'form', article: @article
      list += link_to 'Back', root_path

    end
    list.html_safe
  end

  def edit_article(_article)
    list = ''
    if current_user.nil?
      controller.redirect_to root_path
    else

      list += render 'form', article: @article
      list += link_to 'Back', root_path

    end
    list.html_safe
  end

  def notice_message(notice, alert)
    list = ''
    if notice.present?
      list += "<div class='notice'>"
      list += "<p class='cl-og'> #{notice} </p>"
      list += '</div>'
      list.html_safe
    end
    if alert.present?
      list += "<div class='alert'>"
      list += "<p class='cl-og'> #{alert} </p>"
      list += '</div>'
      list.html_safe
    end
  end

  def article_image(article)
    if article.image.attached?
      cloudinary_url(article.image.key)
    elsif article.image_url
      image_url(article.image_url)
    else
      '/assets/default.jpeg'
    end
  end

  def article_grid_image(category)
    if category.articles.ordered_by_most_recent.first.image.attached?
      cloudinary_url(category.articles.ordered_by_most_recent.first.image.key)
    elsif category.articles.ordered_by_most_recent.first.image_url
      url_for(category.articles.ordered_by_most_recent.first.image_url)
    else
      '/assets/default.jpeg'
    end
  end
end
# rubocop:enable Style/GuardClause
