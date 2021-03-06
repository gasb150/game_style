module ArticlesHelper
    def most_voted(most_voted)  
        if !most_voted.nil?
          list = "<div class='background' style= 'background-image: linear-gradient(
            rgba(0, 0, 0, 0.3), 
            rgba(0, 0, 0, 0.3)
          ), url(\"#{cloudinary_url(most_voted.image.key, options = {})}\")'>"
          list += "<ul>"
          list += "<h2 class='cl-og'> #{most_voted.title} </h2>"
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
                
                list += "<div class='article_image' style= 'background-image: 
                    linear-gradient(
                    rgba(0, 0, 0, 0.5),
                    rgba(0, 0, 0, 0.5)),
                    url(\"#{cloudinary_url(category.articles.ordered_by_most_recent.first.image.key, options = {})}\")'>"
                list +="<div>"
                list +="<h2>#{link_to category.name, category_path(category), class:'cl-lg'}</h2>"
                list +="<h2 class='cl-lg'>article name:     #{category.articles.ordered_by_most_recent.first.title}</h2>"
                list+="</div>"
                list+="</div>"
                
            end
           
        end
        list.html_safe
    end
     
    def articles_cat(articles)
        list = ""
        i=0
        switch=true
        articles.each do |article|
          list+="<section class='article_cat_section show'>"
            
            if switch == true
             
                list+="<div class='article'>"
                  list+="<div class='image_article'>"
                  if !article.image.nil?
                    list+="<img src=\"#{cloudinary_url(article.image.key, options = {})}\">"
                  else
                    list+="<img = src='.app/assets/images/default.jpeg'>"
                  end
                  list+="</div>"
                    list+="<div class='info_article'>"
                      list+="<h2 class='cl-yl cat-name'> #{@category.name}</h2>"
                      list+="<h2 class='cl-dk'> #{article.title} </h2>"
                      text_truncate = truncate(article.text, length: 250)
                      list+="<p> #{text_truncate} </p>"
                      list+="<h2>created by:#{article.user.username}</h2>"  
                      if article.votes.count > 0
                        list+="<p> numbers of votes #{article.votes.count} </p>"
                      else
                        list+="<p> You can be the first vote </p>"
                      end
                        list+="<div class> <p>#{vote_unvote_btn(article, @category.id)}</p>"
                        list+="</div>"
                    list+="</div>"
                  list+="</div>"
                list+="</section>"
    
                else
              
                    list+="<div class='article'>"
                      list+="<div class='info_article'>"
                        list+="<h2 class='cl-yl cat-name'> #{@category.name}</h2>"
                        list+="<h2 class='cl-dk'> #{article.title} </h2>"
                        text_truncate = truncate(article.text, length: 250)
                        list+="<p> #{text_truncate} </p>"
                        list+="<h2>created by:#{article.user.username}</h2>"
                        if article.votes.count > 0
                          list+="<p> numbers of votes #{article.votes.count} </p>"
                        else
                          list+="<p> You can be the first vote </p>"
                        end
                        list+="<div class> <p>#{vote_unvote_btn(article, @category.id)}</p>"
                        list+="</div>"
                      list+="</div>"
                      list+="<div class='image_article'>"
                      if !article.image.nil?
                        list+="<img src=\"#{cloudinary_url(article.image.key, options = {})}\">"
                      else
                        list+="<img = src='.app/assets/images/default.jpeg'>"
                      end
                    list+="</div>"
                  list+="</div>"
                list+="</section>"
              end
              i+=1
              if i.even?
                if switch == true
                  switch = false
                else
                  switch = true
                end
              end
            end
           
          

           plist=""
          articles.each do |article|
            plist+="<section class='article_cat_section hide'>"
            plist+="<div class='article'>"
            plist+="<div class='image_article'>"
            if !article.image.nil?
              plist+="<img src=\"#{cloudinary_url(article.image.key, options = {})}\">"
            else
              plist+="<img = src='.app/assets/images/default.jpeg'>"
            end
            plist+="</div>"
              plist+="<div class='info_article'>"
                plist+="<h2 class='cl-yl cat-name'> #{@category.name}</h2>"
                plist+="<h2 class='cl-dk'> #{article.title} </h2>"
                text_truncate = truncate(article.text, length: 250)
                plist+="<p> #{text_truncate} </p>"
                plist+="<h2>created by:#{article.user.username}</h2>"  
                if article.votes.count > 0
                  plist+="<p> numbers of votes #{article.votes.count} </p>"
                else
                  plist+="<p> You can be the first vote </p>"
                end
                  plist+="<div class> <p>#{vote_unvote_btn(article, @category.id)}</p>"
                  plist+="</div>"
              plist+="</div>"
            plist+="</div>"
          plist+="</section>"
    
              
            end
            list+=plist
            list.html_safe
          end

    def article_select
        list =""
        Category.all.each do |category|
        list+="<div>"
        list+=check_box_tag "article[category_ids][]", category.id, @article.category_ids.include?(category.id), id: dom_id(category)
        list+=label_tag dom_id(category), category.name
        list+="</div>"
      end
     list.html_safe
    end

    
        
end
