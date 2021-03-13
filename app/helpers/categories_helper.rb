module CategoriesHelper
  def category_nav
    list = ' '
    Category.all.each do |category|
      list += "<li> #{link_to category.name, category_path(category)} </li>"
      list += ' '
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
                              url(\"#{article_grid_image(category)}\")'>"
      list += '<div>'
      list += "<h2>#{link_to category.name, category_path(category), class: 'cl-lg'}</h2>"
      list += "<h2 class='cl-lg'>article name:     #{category.articles.ordered_by_most_recent.first.title}</h2>"
      list += '</div> </div>'
    end
    list.html_safe
  end
end
