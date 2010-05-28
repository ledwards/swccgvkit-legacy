require 'test_helper'

class CardlistsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:cardlists)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_cardlist
    assert_difference('Cardlist.count') do
      post :create, :cardlist => { }
    end

    assert_redirected_to cardlist_path(assigns(:cardlist))
  end

  def test_should_show_cardlist
    get :show, :id => cardlists(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => cardlists(:one).id
    assert_response :success
  end

  def test_should_update_cardlist
    put :update, :id => cardlists(:one).id, :cardlist => { }
    assert_redirected_to cardlist_path(assigns(:cardlist))
  end

  def test_should_destroy_cardlist
    assert_difference('Cardlist.count', -1) do
      delete :destroy, :id => cardlists(:one).id
    end

    assert_redirected_to cardlists_path
  end
end
