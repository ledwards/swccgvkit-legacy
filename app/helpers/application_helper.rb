# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def text_field_hint(field_id, options = {})
    function = "textFieldHint('#{field_id}');"
    javascript_tag(function)
  end
end