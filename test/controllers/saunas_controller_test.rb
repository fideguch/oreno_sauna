require 'test_helper'

class SaunasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sauna = saunas(:one)
  end

  test "should get index" do
    get saunas_url
    assert_response :success
  end

  test "should get new" do
    get new_sauna_url
    assert_response :success
  end

  test "should create sauna" do
    assert_difference('Sauna.count') do
      post saunas_url, params: { sauna: { address: @sauna.address, area: @sauna.area, business_hours: @sauna.business_hours, man_not_exist: @sauna.man_not_exist, man_sauna_temp: @sauna.man_sauna_temp, man_water_temp: @sauna.man_water_temp, phone: @sauna.phone, picture: @sauna.picture, sauna_name: @sauna.sauna_name, woman_not_exist: @sauna.woman_not_exist, woman_sauna_temp: @sauna.woman_sauna_temp, woman_water_temp: @sauna.woman_water_temp } }
    end

    assert_redirected_to sauna_url(Sauna.last)
  end

  test "should show sauna" do
    get sauna_url(@sauna)
    assert_response :success
  end

  test "should get edit" do
    get edit_sauna_url(@sauna)
    assert_response :success
  end

  test "should update sauna" do
    patch sauna_url(@sauna), params: { sauna: { address: @sauna.address, area: @sauna.area, business_hours: @sauna.business_hours, man_not_exist: @sauna.man_not_exist, man_sauna_temp: @sauna.man_sauna_temp, man_water_temp: @sauna.man_water_temp, phone: @sauna.phone, picture: @sauna.picture, sauna_name: @sauna.sauna_name, woman_not_exist: @sauna.woman_not_exist, woman_sauna_temp: @sauna.woman_sauna_temp, woman_water_temp: @sauna.woman_water_temp } }
    assert_redirected_to sauna_url(@sauna)
  end

  test "should destroy sauna" do
    assert_difference('Sauna.count', -1) do
      delete sauna_url(@sauna)
    end

    assert_redirected_to saunas_url
  end
end
