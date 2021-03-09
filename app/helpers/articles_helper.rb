module ArticlesHelper
  def most_voted(most_voted)
    list = ''
    unless most_voted.nil?
      list += "<div class='background' style= 'background-image: linear-gradient(
            rgba(0, 0, 0, 0.3),
            rgba(0, 0, 0, 0.3)
          ), url(\"#{cloudinary_url(most_voted.image.key)}\")'> <ul>"
      list += "<h2 class='cl-og'> #{most_voted.title} </h2>"
      list += "<p class='cl-lg'> #{most_voted.text} </p>"
      list += '</ul> </div>'
    end
    list.html_safe
  end

  def categories_index(categories)
    list = ''
    categories.each do |category|
      next if category.articles.first.nil?

      list += "<div class='article_image' style= 'background-image:
                              linear-gradient(
                              rgba(0, 0, 0, 0.5),
                              rgba(0, 0, 0, 0.5)),
                              url(\"#{cloudinary_url(category.articles.ordered_by_most_recent.first.image.key)}\")'>"
      list += '<div>'
      list += "<h2>#{link_to category.name, category_path(category), class: 'cl-lg'}</h2>"
      list += "<h2 class='cl-lg'>article name:     #{category.articles.ordered_by_most_recent.first.title}</h2>"
      list += '</div> </div>'
    end
    list.html_safe
  end

  def image_article(article)
    list = "<div class='image_article'>"
    list += if !article.image.nil?
              "<img src=\"#{cloudinary_url(article.image.key)}\">"
            else
              "<img = src='.app/assets/images/default.jpeg'>"
            end
    list += '</div>'
    list
  end

  def info_article(article, hos)
    list = "<div class='info_article'>"
    list += "<h2 class='cl-yl cat-name'> #{@category.name}</h2>"
    list += "<h2 class='cl-dk'> #{article.title} </h2>"
    text_truncate = truncate(article.text, length: 250)
    list += "<p> #{text_truncate} </p>"
    list += "<h2>created by:#{article.user.username}</h2>"

    list += if article.votes.count.positive?
              "<p> numbers of votes #{article.votes.count} </p>"
            else
              '<p> You can be the first vote </p>'
            end
    list += "<div class=vote> #{vote_unvote_btn(article, @category.id, hos)} '</div> </div>'"

    list
  end

  def article_s_t(article, hos)
    list = image_article(article)
    list += info_article(article, hos)

    list
  end

  def article_s_f(article, hos)
    list = info_article(article, hos)
    list += image_article(article)

    list
  end

  def articles_cat(articles)
    list = ''
    i = 0
    hos = 0
    switch = true
    articles.each do |article|
      hos = 0
      list += "<section class='article_cat_section show'>"
      list += "<div class='article'>"
      list += if switch == true

                article_s_t(article, hos)
              else

                article_s_f(article, hos)

              end
      list += '</section>'
      hos = 1
      list += "<section class='article_cat_section hide'> <div class='article'>"
      list += article_s_t(article, hos)
      list += '</section>'
      i += 1
      next unless i.even?

      switch = switch != true
    end
    list.html_safe
  end

  def article_select
    list = ''
    Category.all.each do |category|
      list += '<div>'
      list += check_box_tag 'article[category_ids][]', category.id, @article.category_ids.include?(category.id),
                            id: dom_id(category)
      list += label_tag dom_id(category), category.name
      list += '</div>'
    end
    list.html_safe
  end
end
