require 'test_helper'
 
class UrlGeneratorFlowTest < ActionDispatch::IntegrationTest
  test "root directory redirects to new url path" do
    get "/"
    assert_routing '/', controller: 'urls', action: 'new'
  end
end