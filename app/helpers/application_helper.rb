module ApplicationHelper

  def alert_css_class(flash_type)
    {
      :success => 'label-success',
      :error => 'label-danger',
      :alert => 'label-warning',
      :notice => 'label-info'
    }[flash_type.to_sym] || flash_type.to_s
  end

end
