require 'test_helper'

class ExpTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @exp_type = exp_types(:one)
  end

  test "should get index" do
    get exp_types_url
    assert_response :success
  end

  test "should get new" do
    get new_exp_type_url
    assert_response :success
  end

  test "should create exp_type" do
    assert_difference('ExpType.count') do
      post exp_types_url, params: { exp_type: { description: @exp_type.description } }
    end

    assert_redirected_to exp_type_url(ExpType.last)
  end

  test "should show exp_type" do
    get exp_type_url(@exp_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_exp_type_url(@exp_type)
    assert_response :success
  end

  test "should update exp_type" do
    patch exp_type_url(@exp_type), params: { exp_type: { description: @exp_type.description } }
    assert_redirected_to exp_type_url(@exp_type)
  end

  test "should destroy exp_type" do
    assert_difference('ExpType.count', -1) do
      delete exp_type_url(@exp_type)
    end

    assert_redirected_to exp_types_url
  end
end
