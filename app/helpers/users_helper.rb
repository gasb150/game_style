module UsersHelper
  def user_gravatar(user)
    gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
    gravatar_url = "http://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.name)
  end
  
def user_nav()
  if current_user
    list = "<div class='avatar'>"
    list += user_gravatar(current_user)
    list+="</div>"
    list +=link_to "Write new article #{current_user.username} ", new_article_path
    list+="<div> | <div>"
    list+=link_to 'Sign out', destroy_user_session_path, method: :delete 
  else
    list+=link_to 'Sign in', user_session_path
    list+= "<div> | <div>"
    list+=link_to 'Register', new_user_registration_path
  end
  list.html_safe
end

def user_wellcome()
  if current_user.nil?
   list = "<h1 class='cl-og'> Hello </h1>"
  else
    list="<h1 class='cl-og'> Hello #{current_user.username}</h1>"
  end
  list.html_safe
end
end
