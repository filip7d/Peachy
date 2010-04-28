module Peachy
  class ChildlessProxyWithAttributes < Proxy
    include StringStyler
    
    def value
      @nokogiri_node.content
    end

    def generate_method_for_xml method_name
      method_name_as_string = method_name.to_s
      check_for_convention(method_name_as_string)
      # do the attribute stuff.  this isn't very elegant...
      match = @nokogiri_node.attribute(method_name_as_string)
      match = @nokogiri_node.attribute(as_camel_case(method_name_as_string)) if match.nil?
      raise NoMatchingXmlPart.new method_name if match.nil?
      return create_content_child(method_name_as_string, match)
    end
  end
end