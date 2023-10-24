# typed: strong
require "sorbet-runtime"

require_relative "./element"

module Eclair
  module Html
    extend T::Sig
    extend T::Helpers
    final!

    # Explictly typed because the RBI is untyped:
    # https://github.com/sorbet/sorbet/blob/35f9c563b8b69bbb695b50c4a5e93c44ae1fe27c/rbi/core/kernel.rbi#L3107
    sig(:final) do
      type_parameters(:X)
        .params(blk: T.proc.params(html: T.class_of(Html)).returns(T.type_parameter(:X)))
        .returns(T.type_parameter(:X))
    end
    def self.yield_self(&blk)
      yield self
    end

    # Methods for common HTML elements to increase type-safety
    # CODE-GEN-START

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.a(attributes, children)
      Eclair.element(:a, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.abbr(attributes, children)
      Eclair.element(:abbr, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.address(attributes, children)
      Eclair.element(:address, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes
      )
        .returns(Element)
    end
    def self.area(attributes)
      Eclair.element(:area, attributes, Element::Void)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.article(attributes, children)
      Eclair.element(:article, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.aside(attributes, children)
      Eclair.element(:aside, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.audio(attributes, children)
      Eclair.element(:audio, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.b(attributes, children)
      Eclair.element(:b, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes
      )
        .returns(Element)
    end
    def self.base(attributes)
      Eclair.element(:base, attributes, Element::Void)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.bdi(attributes, children)
      Eclair.element(:bdi, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.bdo(attributes, children)
      Eclair.element(:bdo, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.blockquote(attributes, children)
      Eclair.element(:blockquote, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.body(attributes, children)
      Eclair.element(:body, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes
      )
        .returns(Element)
    end
    def self.br(attributes)
      Eclair.element(:br, attributes, Element::Void)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.button(attributes, children)
      Eclair.element(:button, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.canvas(attributes, children)
      Eclair.element(:canvas, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.caption(attributes, children)
      Eclair.element(:caption, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.cite(attributes, children)
      Eclair.element(:cite, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.code(attributes, children)
      Eclair.element(:code, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes
      )
        .returns(Element)
    end
    def self.col(attributes)
      Eclair.element(:col, attributes, Element::Void)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.colgroup(attributes, children)
      Eclair.element(:colgroup, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.data(attributes, children)
      Eclair.element(:data, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.datalist(attributes, children)
      Eclair.element(:datalist, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.dd(attributes, children)
      Eclair.element(:dd, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.del(attributes, children)
      Eclair.element(:del, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.details(attributes, children)
      Eclair.element(:details, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.dfn(attributes, children)
      Eclair.element(:dfn, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.dialog(attributes, children)
      Eclair.element(:dialog, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.div(attributes, children)
      Eclair.element(:div, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.dl(attributes, children)
      Eclair.element(:dl, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.dt(attributes, children)
      Eclair.element(:dt, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.em(attributes, children)
      Eclair.element(:em, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes
      )
        .returns(Element)
    end
    def self.embed(attributes)
      Eclair.element(:embed, attributes, Element::Void)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.fieldset(attributes, children)
      Eclair.element(:fieldset, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.figcaption(attributes, children)
      Eclair.element(:figcaption, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.figure(attributes, children)
      Eclair.element(:figure, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.footer(attributes, children)
      Eclair.element(:footer, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.form(attributes, children)
      Eclair.element(:form, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.h1(attributes, children)
      Eclair.element(:h1, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.h2(attributes, children)
      Eclair.element(:h2, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.h3(attributes, children)
      Eclair.element(:h3, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.h4(attributes, children)
      Eclair.element(:h4, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.h5(attributes, children)
      Eclair.element(:h5, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.h6(attributes, children)
      Eclair.element(:h6, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.head(attributes, children)
      Eclair.element(:head, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.header(attributes, children)
      Eclair.element(:header, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.hgroup(attributes, children)
      Eclair.element(:hgroup, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes
      )
        .returns(Element)
    end
    def self.hr(attributes)
      Eclair.element(:hr, attributes, Element::Void)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.html(attributes, children)
      Eclair.element(:html, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.i(attributes, children)
      Eclair.element(:i, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.iframe(attributes, children)
      Eclair.element(:iframe, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes
      )
        .returns(Element)
    end
    def self.img(attributes)
      Eclair.element(:img, attributes, Element::Void)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes
      )
        .returns(Element)
    end
    def self.input(attributes)
      Eclair.element(:input, attributes, Element::Void)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.ins(attributes, children)
      Eclair.element(:ins, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.kbd(attributes, children)
      Eclair.element(:kbd, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.label(attributes, children)
      Eclair.element(:label, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.legend(attributes, children)
      Eclair.element(:legend, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.li(attributes, children)
      Eclair.element(:li, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes
      )
        .returns(Element)
    end
    def self.link(attributes)
      Eclair.element(:link, attributes, Element::Void)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.main(attributes, children)
      Eclair.element(:main, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.map(attributes, children)
      Eclair.element(:map, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.mark(attributes, children)
      Eclair.element(:mark, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.math(attributes, children)
      Eclair.element(:math, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.menu(attributes, children)
      Eclair.element(:menu, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes
      )
        .returns(Element)
    end
    def self.menuitem(attributes)
      Eclair.element(:menuitem, attributes, Element::Void)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes
      )
        .returns(Element)
    end
    def self.meta(attributes)
      Eclair.element(:meta, attributes, Element::Void)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.meter(attributes, children)
      Eclair.element(:meter, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.nav(attributes, children)
      Eclair.element(:nav, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.noscript(attributes, children)
      Eclair.element(:noscript, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.object(attributes, children)
      Eclair.element(:object, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.ol(attributes, children)
      Eclair.element(:ol, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.optgroup(attributes, children)
      Eclair.element(:optgroup, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.option(attributes, children)
      Eclair.element(:option, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.output(attributes, children)
      Eclair.element(:output, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.p(attributes, children)
      Eclair.element(:p, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes
      )
        .returns(Element)
    end
    def self.param(attributes)
      Eclair.element(:param, attributes, Element::Void)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.picture(attributes, children)
      Eclair.element(:picture, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.pre(attributes, children)
      Eclair.element(:pre, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.progress(attributes, children)
      Eclair.element(:progress, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.q(attributes, children)
      Eclair.element(:q, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.rb(attributes, children)
      Eclair.element(:rb, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.rp(attributes, children)
      Eclair.element(:rp, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.rt(attributes, children)
      Eclair.element(:rt, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.rtc(attributes, children)
      Eclair.element(:rtc, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.ruby(attributes, children)
      Eclair.element(:ruby, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.s(attributes, children)
      Eclair.element(:s, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.samp(attributes, children)
      Eclair.element(:samp, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.script(attributes, children)
      Eclair.element(:script, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.search(attributes, children)
      Eclair.element(:search, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.section(attributes, children)
      Eclair.element(:section, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.select(attributes, children)
      Eclair.element(:select, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.slot(attributes, children)
      Eclair.element(:slot, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.small(attributes, children)
      Eclair.element(:small, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes
      )
        .returns(Element)
    end
    def self.source(attributes)
      Eclair.element(:source, attributes, Element::Void)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.span(attributes, children)
      Eclair.element(:span, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.strong(attributes, children)
      Eclair.element(:strong, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.style(attributes, children)
      Eclair.element(:style, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.sub(attributes, children)
      Eclair.element(:sub, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.summary(attributes, children)
      Eclair.element(:summary, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.sup(attributes, children)
      Eclair.element(:sup, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.svg(attributes, children)
      Eclair.element(:svg, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.table(attributes, children)
      Eclair.element(:table, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.tbody(attributes, children)
      Eclair.element(:tbody, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.td(attributes, children)
      Eclair.element(:td, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.template(attributes, children)
      Eclair.element(:template, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.textarea(attributes, children)
      Eclair.element(:textarea, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.tfoot(attributes, children)
      Eclair.element(:tfoot, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.th(attributes, children)
      Eclair.element(:th, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.thead(attributes, children)
      Eclair.element(:thead, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.time(attributes, children)
      Eclair.element(:time, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.title(attributes, children)
      Eclair.element(:title, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.tr(attributes, children)
      Eclair.element(:tr, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes
      )
        .returns(Element)
    end
    def self.track(attributes)
      Eclair.element(:track, attributes, Element::Void)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.u(attributes, children)
      Eclair.element(:u, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.ul(attributes, children)
      Eclair.element(:ul, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.var(attributes, children)
      Eclair.element(:var, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes,
        children: T::Array[Element::ElementChild]
      )
        .returns(Element)
    end
    def self.video(attributes, children)
      Eclair.element(:video, attributes, children)
    end

    sig(:final) do
      params(
        attributes: Element::Attributes
      )
        .returns(Element)
    end
    def self.wbr(attributes)
      Eclair.element(:wbr, attributes, Element::Void)
    end

    # CODE-GEN-END
  end
end
