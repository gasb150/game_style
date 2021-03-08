module CategoriesHelper
  def category_nav
    list = ' '
    Category.all.each do |category|
      list += "<li> #{link_to category.name, category_path(category)} </li>"
      list += ' '
    end
    list.html_safe
  end
end
