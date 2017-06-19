require 'test_helper'

class SchnipselsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @schnipsel = schnipsels(:one)
  end

  test "should get index" do
    get schnipsels_url
    assert_response :success
  end

  test "should get new" do
    get new_schnipsel_url
    assert_response :success
  end

  test "should create schnipsel" do
    assert_difference('Schnipsel.count') do
      post schnipsels_url, params: { schnipsel: { code: @schnipsel.code, titel: @schnipsel.titel } }
    end

    assert_redirected_to schnipsel_url(Schnipsel.last)
  end

  test "should show schnipsel" do
    get schnipsel_url(@schnipsel)
    assert_response :success
  end

  test "should get edit" do
    get edit_schnipsel_url(@schnipsel)
    assert_response :success
  end

  test "should update schnipsel" do
    patch schnipsel_url(@schnipsel), params: { schnipsel: { code: @schnipsel.code, titel: @schnipsel.titel } }
    assert_redirected_to schnipsel_url(@schnipsel)
  end

  test "should destroy schnipsel" do
    assert_difference('Schnipsel.count', -1) do
      delete schnipsel_url(@schnipsel)
    end

    assert_redirected_to schnipsels_url
  end
end
