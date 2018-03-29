require 'test_helper'

class UrlTest < ActiveSupport::TestCase
  
  test "should not save url without original_url" do
    url = Url.new
    assert_not url.save
  end

  test "should generate shortened url after creation" do
    url = Url.create(original_url: "www.thingy.com")
    assert url.shortened_url.present?
  end 
end
