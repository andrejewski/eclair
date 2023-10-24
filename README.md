# eclair
React-like HTML building for Ruby

## Render simple HTML

```rb
example = Eclair::Html.yield_self do |h|
  h.div({}, ["Hello ", h.b({}, 'world'), "!"])
end

html = Eclair.render(example)
```

## Compose components

```rb
def external_link(href:, text:)
  Eclair::Html.yield_self do |h|
    h.a({href: href, target: '_blank'}, text)
  end
end

html = Eclair.render(
  external_link(
    href: 'https://example.com',
    text: 'Click here'
  )
)
```

