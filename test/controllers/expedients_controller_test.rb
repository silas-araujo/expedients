require 'test_helper'

class ExpedientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @expedient = expedients(:one)
  end

  test "should get index" do
    get expedients_url
    assert_response :success
  end

  test "should get new" do
    get new_expedient_url
    assert_response :success
  end

  test "should create expedient" do
    assert_difference('Expedient.count') do
      post expedients_url, params: { expedient: { destination_id: @expedient.destination_id, exp_date: @expedient.exp_date, exp_type_id: @expedient.exp_type_id, responsible_id: @expedient.responsible_id, spu: @expedient.spu, topic: @expedient.topic } }
    end

    assert_redirected_to expedient_url(Expedient.last)
  end

  test "should show expedient" do
    get expedient_url(@expedient)
    assert_response :success
  end

  test "should get edit" do
    get edit_expedient_url(@expedient)
    assert_response :success
  end

  test "should update expedient" do
    patch expedient_url(@expedient), params: { expedient: { destination_id: @expedient.destination_id, exp_date: @expedient.exp_date, exp_type_id: @expedient.exp_type_id, responsible_id: @expedient.responsible_id, spu: @expedient.spu, topic: @expedient.topic } }
    assert_redirected_to expedient_url(@expedient)
  end

  test "should destroy expedient" do
    assert_difference('Expedient.count', -1) do
      delete expedient_url(@expedient)
    end

    assert_redirected_to expedients_url
  end
end
