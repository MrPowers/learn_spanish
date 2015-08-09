module ApplicationHelper

  def alert_css_class(flash_type)
    {
      :success => 'label-success',
      :error => 'label-danger',
      :alert => 'label-warning',
      :notice => 'label-info'
    }[flash_type.to_sym] || flash_type.to_s
  end

  def emojify(content)
    h(content).to_str.gsub(/:([\w+-]+):/) do |match|
      if emoji = Emoji.find_by_alias($1)
        %(<img alt="#$1" src="#{image_path("emoji/#{emoji.image_filename}")}" style="vertical-align:middle" width="20" height="20" />)
      else
        match
      end
    end.html_safe if content.present?
  end

end
