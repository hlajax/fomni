require 'test_helper'

class HistoiresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @histoire = histoires(:one)
  end

  test "should get index" do
    get histoires_url
    assert_response :success
  end

  test "should get new" do
    get new_histoire_url
    assert_response :success
  end

  test "should create histoire" do
    assert_difference('Histoire.count') do
      post histoires_url, params: { histoire: { contenu: @histoire.contenu, titre: @histoire.titre } }
    end

    assert_redirected_to histoire_url(Histoire.last)
  end

  test "should show histoire" do
    get histoire_url(@histoire)
    assert_response :success
  end

  test "should get edit" do
    get edit_histoire_url(@histoire)
    assert_response :success
  end

  test "should update histoire" do
    patch histoire_url(@histoire), params: { histoire: { contenu: @histoire.contenu, titre: @histoire.titre } }
    assert_redirected_to histoire_url(@histoire)
  end

  test "should destroy histoire" do
    assert_difference('Histoire.count', -1) do
      delete histoire_url(@histoire)
    end

    assert_redirected_to histoires_url
  end
end
