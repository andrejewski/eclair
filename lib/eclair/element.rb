# typed: strong
require 'sorbet-runtime'

module Eclair
  class Element < T::Struct
    class DangerousUnescapedHtml < T::Struct
      const :html, String
    end

    module Void
      extend T::Helpers
      final!
    end

    AttributeValue = T.type_alias {T.any(T::Boolean, String)}
    ElementChild = T.type_alias {T.any(Element, String, DangerousUnescapedHtml)}
    Children = T.type_alias {T.any(T.class_of(Void), T::Array[ElementChild])}

    const :tag, Symbol
    const :attributes, T::Hash[Symbol, AttributeValue]
    const :children, Children
  end
end
