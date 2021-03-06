module ArticlesHelper
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

    def categories_index(categories)
        list=""
        categories.each do |category|
            
            if !category.articles.first.nil?
                
                list += "<div class='article_image' style= 'border: 5px solid black; background-image: linear-gradient(
                    rgba(0, 0, 0, 0.5),
                    rgba(0, 0, 0, 0.5)),
                    url(\"#{cloudinary_url(category.articles.ordered_by_most_recent.first.image.key, options = {})}\")'>"
                list +="<div>"
                list +="<h2 class='cl-og'>#{link_to category.name, category_path(category)}</h2>"
                list +="<h2>article name:     #{category.articles.ordered_by_most_recent.first.title}</h2>"
                list+="</div>"
                list+="</div>"
                
            end
           
        end
        list.html_safe
    end
    
end
