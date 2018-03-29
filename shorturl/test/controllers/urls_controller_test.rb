require 'test_helper'

class UrlsControllerTest < ActionDispatch::IntegrationTest
  test "should redirect to the original url" do
    # test_url is a URL with this data: {original_url: "ww.batman.com", short_url: batman}
    # This tests if localhost:3000/batman redirects to "www.batman.com"
    test_url = urls(:one)
    get "/#{test_url.shortened_url}"
    assert_redirected_to "http://#{test_url.original_url}"
  end

  test "should succesfully create a shortened url" do 
    post "/url", params: { url: { original_url: "www.hello.com" } }, xhr: true
    assert_equal "text/javascript", @response.content_type
  end
end