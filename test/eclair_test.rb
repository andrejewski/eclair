require_relative "./test_helper"

class EclairTest < Minitest::Test
  def test_basic_hello_world_example
    example = Eclair::Html.yield_self do |h|
      h.p({}, ["Hello ", h.b({}, 'world'), "!"])
    end
    
    html = Eclair.render(example)

    assert_equal('<p>Hello <b>world</b>!</p>', html)
  end
end
