require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @session = sessions(:one)
  end

  test "should get index" do
    get sessions_url, as: :json
    assert_response :success
  end

  test "should create session" do
    assert_difference('Session.count') do
      post sessions_url, params: { session: { date: @session.date, end_hour: @session.end_hour, location: @session.location, responsable_id: @session.responsable_id, start_hour: @session.start_hour } }, as: :json
    end

    assert_response 201
  end

  test "should show session" do
    get session_url(@session), as: :json
    assert_response :success
  end

  test "should update session" do
    patch session_url(@session), params: { session: { date: @session.date, end_hour: @session.end_hour, location: @session.location, responsable_id: @session.responsable_id, start_hour: @session.start_hour } }, as: :json
    assert_response 200
  end

  test "should destroy session" do
    assert_difference('Session.count', -1) do
      delete session_url(@session), as: :json
    end

    assert_response 204
  end
end
