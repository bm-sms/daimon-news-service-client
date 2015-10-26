require 'test_helper'

class NewsServiceTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::NewsService::VERSION
  end

  def test_it_does_something_useful
    assert false
  end
end
