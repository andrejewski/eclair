#!/usr/bin/env ruby
# typed: strict
# frozen_string_literal: true
require "sorbet-runtime"

HTML_TAGS = T.let(
  [
    "a",
    "abbr",
    "address",
    "area",
    "article",
    "aside",
    "audio",
    "b",
    "base",
    "bdi",
    "bdo",
    "blockquote",
    "body",
    "br",
    "button",
    "canvas",
    "caption",
    "cite",
    "code",
    "col",
    "colgroup",
    "data",
    "datalist",
    "dd",
    "del",
    "details",
    "dfn",
    "dialog",
    "div",
    "dl",
    "dt",
    "em",
    "embed",
    "fieldset",
    "figcaption",
    "figure",
    "footer",
    "form",
    "h1",
    "h2",
    "h3",
    "h4",
    "h5",
    "h6",
    "head",
    "header",
    "hgroup",
    "hr",
    "html",
    "i",
    "iframe",
    "img",
    "input",
    "ins",
    "kbd",
    "label",
    "legend",
    "li",
    "link",
    "main",
    "map",
    "mark",
    "math",
    "menu",
    "menuitem",
    "meta",
    "meter",
    "nav",
    "noscript",
    "object",
    "ol",
    "optgroup",
    "option",
    "output",
    "p",
    "param",
    "picture",
    "pre",
    "progress",
    "q",
    "rb",
    "rp",
    "rt",
    "rtc",
    "ruby",
    "s",
    "samp",
    "script",
    "search",
    "section",
    "select",
    "slot",
    "small",
    "source",
    "span",
    "strong",
    "style",
    "sub",
    "summary",
    "sup",
    "svg",
    "table",
    "tbody",
    "td",
    "template",
    "textarea",
    "tfoot",
    "th",
    "thead",
    "time",
    "title",
    "tr",
    "track",
    "u",
    "ul",
    "var",
    "video",
    "wbr"
  ],
  T::Array[String]
)

VOID_TAGS = T.let(
  [
    "area",
    "base",
    "br",
    "col",
    "embed",
    "hr",
    "img",
    "input",
    "link",
    "menuitem",
    "meta",
    "param",
    "source",
    "track",
    "wbr"
  ],
  T::Array[String]
)

CODE_GEN_START_MARKER = "# CODE-GEN-START"
CODE_GEN_END_MARKER = "# CODE-GEN-END"

html_module_file_path = File.expand_path("./lib/eclair/html.rb")

initial_content = File.read(html_module_file_path)

content_before_code_gen_start, remaining_content = initial_content.split(CODE_GEN_START_MARKER)

remaining_content = T.must_because(remaining_content) { "code-gen stop mark should be present" }

_, content_after_code_gen_end = remaining_content.split(CODE_GEN_END_MARKER)

generated_code = HTML_TAGS
  .map do |tag|
    void = VOID_TAGS.include?(tag)
    if void
      <<~RUBY
        sig(:final) do
          params(
            attributes: Element::Attributes,
          )
            .returns(Element)
        end
        def self.#{tag}(attributes)
          Eclair.element(:#{tag}, attributes, Element::Void)
        end
      RUBY
    else
      <<~RUBY
        sig(:final) do
          params(
            attributes: Element::Attributes,
            children: T::Array[Element::ElementChild]
          )
            .returns(Element)
        end
        def self.#{tag}(attributes, children)
          Eclair.element(:#{tag}, attributes, children)
        end
      RUBY
    end
  end
  .join("\n")

generated_file_content = [
  T.must_because(content_before_code_gen_start) { "this is code before" }.strip,
  "\n#{CODE_GEN_START_MARKER}\n\n",
  generated_code,
  "\n#{CODE_GEN_END_MARKER}\n",
  T.must_because(content_after_code_gen_end) { "this is code after" }.strip
].join

File.write(
  html_module_file_path,
  generated_file_content
)

`rubyfmt . -i`
