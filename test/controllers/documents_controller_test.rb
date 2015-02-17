require 'test_helper'

class DocumentsControllerTest < ActionController::TestCase
  setup do
    @document = documents(:rechnung)
    @update = {
      name: 'Test',
      description: 'This is a test',
    }
    dave = users(:one)
    session[:user_id] = dave.id
  end

  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:documents)
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should create document' do
    assert_difference('Document.count') do
      post :create, document: @update
    end

    assert_redirected_to document_path(assigns(:document))
  end

  test 'should show document' do
    get :show, id: @document
    assert_response :success
  end

  test 'should get edit' do
    get :edit, id: @document
    assert_response :success
  end

  test 'should not get edit if wrong user' do
    session[:user_id] = 2
    get :edit, id: @document
    assert_redirected_to documents_url
  end

  test 'should update document' do
    patch :update, id: @document, document: @update
    assert_redirected_to document_path(assigns(:document))
  end

  test 'should destroy document' do
    assert_difference('Document.count', -1) do
      delete :destroy, id: @document
    end

    assert_redirected_to documents_path
  end
end
