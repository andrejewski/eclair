# typed: strict
require 'sorbet-runtime'
require 'cgi'
require_relative './eclair/element'
require_relative './eclair/html'

module Eclair
  extend T::Sig
  extend T::Helpers
  final!

  sig(:final) do
    params(
      tag: Symbol,
      attributes: T::Hash[Symbol, Element::AttributeValue],
      children: Element::Children
    )
      .returns(Element)
  end
  def self.element(tag, attributes, children)
    Element.new(
      tag: tag,
      attributes: attributes,
      children: children,
    )
  end

  sig(:final) {params(element: Element).returns(String)}
  def self.render(element)
    attributes = element.attributes.map do |key, value|
      if !value
        next
      end

      rendered_value =
        case value
        when TrueClass
          next key.to_s
        when String
          escape_html(value)
        else
          T.absurd(value)
        end

      "#{key}=\"#{rendered_value}\""
    end.compact.join(" ")

    start_tag_open =
      if attributes.empty?
        "<#{element.tag}"
      else
        "<#{element.tag} #{attributes}"  
      end  

    rendered_children =
      case (c = element.children)
      when Element::Void
        return "#{start_tag_open}/>"
      when Array
        c.map do |child|
          case child
          when Element
            render(child)
          when Element::DangerousUnescapedHtml
            child.html
          when String
            escape_html(child)

          else
            T.absurd(child)
          end
        end
      else
        T.absurd(c)
      end

    "#{start_tag_open}>#{rendered_children.join}</#{element.tag}>"
  end

  sig(:final) {params(str: String).returns(String)}
  private_class_method def self.escape_html(str)
    ::CGI.escape_html(str)
  end
end