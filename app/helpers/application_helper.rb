module ApplicationHelper
  # Rails scaffold helper to display individual errors
  def formatted_errors_for(object, parameter)
    unless @worker.errors.empty?
      content_tag(:div, :class => 'text-danger col-lg-2') do
        object.errors[parameter].join(" & ")
      end
    end
  end
end
