require 'test_helper'

class SourcingPartnersControllerTest < ActionController::TestCase
  setup do
    @sourcing_partner = sourcing_partners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sourcing_partners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sourcing_partner" do
    assert_difference('SourcingPartner.count') do
      post :create, sourcing_partner: { introduction: @sourcing_partner.introduction, name: @sourcing_partner.name }
    end

    assert_redirected_to sourcing_partner_path(assigns(:sourcing_partner))
  end

  test "should show sourcing_partner" do
    get :show, id: @sourcing_partner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sourcing_partner
    assert_response :success
  end

  test "should update sourcing_partner" do
    put :update, id: @sourcing_partner, sourcing_partner: { introduction: @sourcing_partner.introduction, name: @sourcing_partner.name }
    assert_redirected_to sourcing_partner_path(assigns(:sourcing_partner))
  end

  test "should destroy sourcing_partner" do
    assert_difference('SourcingPartner.count', -1) do
      delete :destroy, id: @sourcing_partner
    end

    assert_redirected_to sourcing_partners_path
  end
end
