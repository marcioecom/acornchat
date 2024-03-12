module FlashHelper

  def flash_class(level)
    case level
    when 'notice' then 'bg-blue-50 border border-blue-100'
    when 'success' then 'bg-green-50 border border-green-100'
    when 'error' then 'bg-red-50 border border-red-100'
    when 'alert' then 'bg-yellow-50 border border-yellow-100'
    end
  end

  # ( I used gem 'inline_svg' to handle svgs within my app and Zondicons for the svg's)

  def flash_icon(img)
    case img
      when 'notice' then "information-outline.svg" # Zondicons
      when 'success' then "checkmark-outline.svg" # Zondicons
      when 'error' then "exclamation-outline.svg" # Zondicons
      when 'alert' then "close-outline.svg" # Zondicons
    end
  end

  def flash_status(status)
    case status
      when 'notice' then content_tag :p, "My App - Notice", class: "font-bold text-xl text-blue-500"
      when 'success' then content_tag :p, "My App - Success", class: "font-bold text-xl text-green-500"
      when 'error' then content_tag :p, "My App - Warning", class: "font-bold text-xl text-red-500"
      when 'alert' then content_tag :p, "My App - Error", class: "font-bold text-xl text-yellow-500"
    end
  end
end
