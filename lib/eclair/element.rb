# typed: strong
require "sorbet-runtime"

module Eclair
  class Element
    extend T::Sig
    extend T::Helpers
    final!

    class DangerousUnescapedHtml
      extend T::Sig
      extend T::Helpers
      final!

      sig(:final) { returns(String) }
      attr_reader :html

      sig(:final) do
        params(html: String).void
      end
      def initialize(html:)
        @html = html
      end
    end

    module Void
      extend T::Helpers
      final!
    end

    AttributeValue = T.type_alias { T.any(T::Boolean, String) }
    Attributes = T.type_alias { T::Hash[Symbol, AttributeValue] }
    ElementChild = T.type_alias { T.any(Element, String, DangerousUnescapedHtml) }
    Children = T.type_alias { T.any(T.class_of(Void), T::Array[ElementChild]) }

    sig(:final) { returns(Symbol) }
    attr_reader :tag

    sig(:final) { returns(Attributes) }
    attr_reader :attributes

    sig(:final) { returns(Children) }
    attr_reader :children

    sig(:final) do
      params(tag: Symbol, attributes: Attributes, children: Children).void
    end
    def initialize(tag:, attributes:, children:)
      @tag = tag
      @attributes = attributes
      @children = children
    end
  end
end
