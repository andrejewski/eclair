# typed: strong
# frozen_string_literal: true
require_relative "./test_helper"

class EclairTest < Minitest::Test
  extend T::Sig

  sig { void }
  def test_basic_hello_world
    example = Eclair::Html.yield_self do |h|
      h.p({}, ["Hello ", h.b({}, ["world"]), "!"])
    end

    html = Eclair.render(example)

    assert_equal(html, "<p>Hello <b>world</b>!</p>")
  end

  sig { void }
  def test_boolean_attributes
    true_example = Eclair::Html.yield_self do |h|
      h.input({disabled: true})
    end

    assert_equal(Eclair.render(true_example), "<input disabled>")

    false_example = Eclair::Html.yield_self do |h|
      h.input({disabled: false})
    end

    assert_equal(Eclair.render(false_example), "<input>")
  end

  sig { void }
  def test_void_tag_without_attributes
    example = Eclair::Html.yield_self do |h|
      h.br({})
    end

    html = Eclair.render(example)

    assert_equal(html, "<br>")
  end

  sig { void }
  def test_void_tag_with_attributes
    example = Eclair::Html.yield_self do |h|
      h.img({src: "https://example.com/logo.png"})
    end

    html = Eclair.render(example)

    assert_equal(html, "<img src=\"https://example.com/logo.png\">")
  end

  sig { void }
  def test_escaping_text_content
    example = Eclair::Html.yield_self do |h|
      h.p({}, ["<script>evil()</script>"])
    end

    html = Eclair.render(example)

    assert_equal(html, "<p>&lt;script&gt;evil()&lt;/script&gt;</p>")
  end

  sig { void }
  def test_escaping_attribute_values
    example = Eclair::Html.yield_self do |h|
      h.p({attr: "\"trying to <break> out"}, [])
    end

    html = Eclair.render(example)

    assert_equal(html, "<p attr=\"&quot;trying to &lt;break&gt; out\"></p>")
  end

  sig { void }
  def test_dangerous_unescaped_html_escape_hatch
    example = Eclair::Html.yield_self do |h|
      h.div({}, [Eclair::Element::DangerousUnescapedHtml.new(html: "<p>Hello</p>")])
    end

    html = Eclair.render(example)

    assert_equal(html, "<div><p>Hello</p></div>")
  end
end
