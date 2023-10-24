# typed: strong
require "sorbet-runtime"

module Eclair
  class Element < T::Struct
    class DangerousUnescapedHtml < T::Struct
      const :html, String
    end

    module Void
      extend T::Helpers
      final!
    end

    AttributeValue = T.type_alias { T.any(T::Boolean, String) }
    Attributes = T.type_alias { T::Hash[Symbol, AttributeValue] }
    ElementChild = T.type_alias { T.any(Element, String, DangerousUnescapedHtml) }
    Children = T.type_alias { T.any(T.class_of(Void), T::Array[ElementChild]) }

    const :tag, Symbol
    const :attributes, Attributes
    const :children, Children
  end
end
