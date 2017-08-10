module ApplicationHelper

  def get_color_class(score)
    if score >= 80
      return 'success'
    elsif score >= 60
      return 'warning'
    else
      return 'danger'
    end
  end

end
