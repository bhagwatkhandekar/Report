require 'test_helper'

class MfiReportsControllerTest < ActionController::TestCase
  setup do
    @mfi_report = mfi_reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mfi_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mfi_report" do
    assert_difference('MfiReport.count') do
      post :create, mfi_report: { additional_name: @mfi_report.additional_name, additional_name_type: @mfi_report.additional_name_type, address: @mfi_report.address, date_of_birth: @mfi_report.date_of_birth, first_name: @mfi_report.first_name, gender: @mfi_report.gender, inquiry_purpose: @mfi_report.inquiry_purpose, last_name: @mfi_report.last_name, middle_name: @mfi_report.middle_name, national_id: @mfi_report.national_id, phone_home: @mfi_report.phone_home, phone_mob: @mfi_report.phone_mob, pin_code: @mfi_report.pin_code, ration_card: @mfi_report.ration_card, ref_number: @mfi_report.ref_number, transaction_amount: @mfi_report.transaction_amount, voter_id: @mfi_report.voter_id }
    end

    assert_redirected_to mfi_report_path(assigns(:mfi_report))
  end

  test "should show mfi_report" do
    get :show, id: @mfi_report
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mfi_report
    assert_response :success
  end

  test "should update mfi_report" do
    patch :update, id: @mfi_report, mfi_report: { additional_name: @mfi_report.additional_name, additional_name_type: @mfi_report.additional_name_type, address: @mfi_report.address, date_of_birth: @mfi_report.date_of_birth, first_name: @mfi_report.first_name, gender: @mfi_report.gender, inquiry_purpose: @mfi_report.inquiry_purpose, last_name: @mfi_report.last_name, middle_name: @mfi_report.middle_name, national_id: @mfi_report.national_id, phone_home: @mfi_report.phone_home, phone_mob: @mfi_report.phone_mob, pin_code: @mfi_report.pin_code, ration_card: @mfi_report.ration_card, ref_number: @mfi_report.ref_number, transaction_amount: @mfi_report.transaction_amount, voter_id: @mfi_report.voter_id }
    assert_redirected_to mfi_report_path(assigns(:mfi_report))
  end

  test "should destroy mfi_report" do
    assert_difference('MfiReport.count', -1) do
      delete :destroy, id: @mfi_report
    end

    assert_redirected_to mfi_reports_path
  end
end
