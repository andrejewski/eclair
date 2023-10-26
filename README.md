# Eclair
> Declarative HTML building for Ruby

```sh
gem install eclair
```

```rb
require 'eclair'

example = Eclair::Html.yield_self do |h|
  h.p({}, ["Hello ", h.b({}, 'world'), "!"])
end

html = Eclair.render(example)
#=> "<p>Hello <b>world</b>!</p>"
```

Features:

- Sorbet types (>= `typed: strict`)
- HTML escaping by default
- Composition-based API
- Small API surface

## Standard library

The `Eclair::Html` module offers methods for building all standard HTML elements such as `p`, `span`, and `div`.

Reach for `yield_self` to avoid boilerplate of calling `Eclair::Html.<tag>` multiple times.

## Custom tags

Use `Eclair.element(tag, attributes, children)` to construct any HTML element. The `Eclair::Html` module uses this method.

```rb
example = Eclair.element('my-custom-element', {}, Eclair::Element::Void)

Eclair.render(example)
#=> "<my-custom-element/>"
```

## HTML escaping

All text content and HTML attributes are escaped by default:

```rb
example = Eclair::Html.yield_self do |h|
  h.p({}, ["<script>evil()</script>"])
end

Eclair.render(example)
#=> "<p>&lt;script&gt;evil()&lt;/script&gt;</p>"
```

To circumvent this, reach for the appropriately scary `Eclair::Element::DangerousUnescapedHtml`:

```rb
example = Eclair::Html.yield_self do |h|
  h.div({}, [Eclair::Element::DangerousUnescapedHtml.new(html: "<p>Hello</p>")])
end

html = Eclair.render(example)
#=> "<div><p>Hello</p></div>"
```

---

A special thank you to [Cyrus Vandrevala](https://github.com/cmvandrevala) for transferring me the `eclair` gem name.