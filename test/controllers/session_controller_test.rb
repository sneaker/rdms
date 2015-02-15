require 'test_helper'

class SessionControllerTest < ActionController::TestCase

  def setup
    #ensure session is cleared
    session.clear
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should login" do
    dave = users(:one)
    post :create, name: dave.name, password: 'secret'
    assert_redirected_to documents_url
    assert_equal dave.id, session[:user_id]
  end

  test "should not login" do
    post :create, name: "none", password: 'none'
    assert_redirected_to login_url
    assert_equal nil, session[:user_id]
  end

  test "should logout" do
    delete :destroy
    assert_redirected_to login_url
  end


end
