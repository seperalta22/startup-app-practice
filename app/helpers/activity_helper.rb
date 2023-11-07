module ApplicationHelper
  def tailwind_color_class_for(flash_type)
    {
      success: "green",
      error: "red",
      alert: "orange",
      notice: "yellow",
    }[flash_type.to_sym] || flash_type.to_s
  end

  def flash_messages(_opts = {})
    # return if flash[0][0] == :form_error
    flash.each do |msg_type, message|
      next if msg_type == :form_error
      concat(content_tag(:div, message.html_safe, { class: "alert transition-all duration-1000 ease-in-out p-4 m-4 mt-5 w-3/5 bg-#{tailwind_color_class_for(msg_type)}-100 border border-#{tailwind_color_class_for(msg_type)}-400 text-#{tailwind_color_class_for(msg_type)}-700 rounded-lg", role: msg_type }) do
        concat content_tag(:span, message.html_safe, { class: "block sm:inline" })
      end)
    end
    nil
  end
end
