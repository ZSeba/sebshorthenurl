require 'test_helper'

class UrlTest < ActiveSupport::TestCase
  
  test "should not save url without original_url" do
    url = Url.new
    assert_not url.save
  end
end
