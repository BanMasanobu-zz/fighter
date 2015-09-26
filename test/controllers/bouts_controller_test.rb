require 'test_helper'

class BoutsControllerTest < ActionController::TestCase
  setup do
    @bout = bouts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bouts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bout" do
    assert_difference('Bout.count') do
      post :create, bout: { boutdate: @bout.boutdate, bouttime: @bout.bouttime, fighter_id: @bout.fighter_id, opponent: @bout.opponent, result: @bout.result }
    end

    assert_redirected_to bout_path(assigns(:bout))
  end

  test "should show bout" do
    get :show, id: @bout
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bout
    assert_response :success
  end

  test "should update bout" do
    patch :update, id: @bout, bout: { boutdate: @bout.boutdate, bouttime: @bout.bouttime, fighter_id: @bout.fighter_id, opponent: @bout.opponent, result: @bout.result }
    assert_redirected_to bout_path(assigns(:bout))
  end

  test "should destroy bout" do
    assert_difference('Bout.count', -1) do
      delete :destroy, id: @bout
    end

    assert_redirected_to bouts_path
  end
end
