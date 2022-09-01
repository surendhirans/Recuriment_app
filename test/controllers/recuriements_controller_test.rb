require "test_helper"

class RecuriementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recuriement = recuriements(:one)
  end

  test "should get index" do
    get recuriements_url
    assert_response :success
  end

  test "should get new" do
    get new_recuriement_url
    assert_response :success
  end

  test "should create recuriement" do
    assert_difference("Recuriement.count") do
      post recuriements_url, params: { recuriement: { email: @recuriement.email, first_name: @recuriement.first_name, last_name: @recuriement.last_name, phone: @recuriement.phone } }
    end

    assert_redirected_to recuriement_url(Recuriement.last)
  end

  test "should show recuriement" do
    get recuriement_url(@recuriement)
    assert_response :success
  end

  test "should get edit" do
    get edit_recuriement_url(@recuriement)
    assert_response :success
  end

  test "should update recuriement" do
    patch recuriement_url(@recuriement), params: { recuriement: { email: @recuriement.email, first_name: @recuriement.first_name, last_name: @recuriement.last_name, phone: @recuriement.phone } }
    assert_redirected_to recuriement_url(@recuriement)
  end

  test "should destroy recuriement" do
    assert_difference("Recuriement.count", -1) do
      delete recuriement_url(@recuriement)
    end

    assert_redirected_to recuriements_url
  end
end
