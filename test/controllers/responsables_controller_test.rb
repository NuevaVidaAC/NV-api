require 'test_helper'

class ResponsablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @responsable = responsables(:one)
  end

  test "should get index" do
    get responsables_url, as: :json
    assert_response :success
  end

  test "should create responsable" do
    assert_difference('Responsable.count') do
      post responsables_url, params: { responsable: { name: @responsable.name } }, as: :json
    end

    assert_response 201
  end

  test "should show responsable" do
    get responsable_url(@responsable), as: :json
    assert_response :success
  end

  test "should update responsable" do
    patch responsable_url(@responsable), params: { responsable: { name: @responsable.name } }, as: :json
    assert_response 200
  end

  test "should destroy responsable" do
    assert_difference('Responsable.count', -1) do
      delete responsable_url(@responsable), as: :json
    end

    assert_response 204
  end
end
