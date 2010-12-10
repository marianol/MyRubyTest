module UsersHelper
  
  def gravatar_for(user, options = { :size => 50 })
    gravatar_image_tag(user.email.downcase, :alt => user.name,
                                            :class => 'gravatar',
                                            :gravatar => options)
  end
  
  def active_icon_for(user)
    user.active ? image_tag('tick.png') : image_tag('cross.png') 
  end
end
