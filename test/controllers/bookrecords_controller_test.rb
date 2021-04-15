require 'test_helper'

class BookrecordsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bookrecords_index_url
    assert_response :success
  end

end
