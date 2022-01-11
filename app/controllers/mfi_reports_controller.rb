class MfiReportsController < ApplicationController
  include MfiReportsHelper
  before_action :set_mfi_report, only: [:show, :edit, :update, :destroy]


  # GET /mfi_reports
  # GET /mfi_reports.json
  def index
    @mfi_reports = MfiReport.all
  end

  # GET /mfi_reports/1
  # GET /mfi_reports/1.json
  def show
  end

  # GET /mfi_reports/new
  def new
    @mfi_report = MfiReport.new
  end

  # GET /mfi_reports/1/edit
  def edit
  end

  # POST /mfi_reports
  # POST /mfi_reports.json
  def create
    @mfi_report = MfiReport.new(mfi_report_params)
     respond_to do |format|
      if @mfi_report.save
        add_refer_number(@mfi_report)
        # url = "https://crbrinfouat.aarohiinfo.com/api/CreditReport/GetCreditReport"
        # body = MfiReport.new.get_body(@mfi_report)
        # header = {'Content-Type' => 'application/json', 'Accept' => 'application/json'}
        # response = RestClient.post(url,body.to_json, header)
        # binding.pry
        # @scr = StoreCreditReport.new
        # @scr.desc_response = response
        # @scr.save!
        @response = mfi_response
        @credit_report = generate_credit_report(@api_response)
        # format.html { redirect_to mfi_credit_mfi_reports_url, notice: 'Mfi report was successfully created.' }
        # format.html { render :mfi_credit, notice: 'Mfi report was successfully created' }
        format.html { render :mfi_credit, status: :created, location: @mfi_report }
        format.json { render json: response, status: :OK }
      else
        format.html { render :new }
        format.json { render json: @mfi_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mfi_reports/1
  # PATCH/PUT /mfi_reports/1.json
  def update
    respond_to do |format|
      if @mfi_report.update(mfi_report_params)
        format.html { redirect_to @mfi_report, notice: 'Mfi report was successfully updated.' }
        format.json { render :show, status: :ok, location: @mfi_report }
      else
        format.html { render :edit }
        format.json { render json: @mfi_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mfi_reports/1
  # DELETE /mfi_reports/1.json
  def destroy
    @mfi_report.destroy
    respond_to do |format|
      format.html { redirect_to mfi_reports_url, notice: 'Mfi report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mfi_report
      @mfi_report = MfiReport.find(params[:id])
    end

    def add_refer_number(mfi_report)
        charset = Array('a'..'z') + Array('0'..'9')
        number = Array.new(20) { charset.sample }.join
        mfi_report.refer_number = number
        mfi_report.save
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mfi_report_params
      params.require(:mfi_report).permit(:ref_number, :inquiry_purpose, :transaction_amount, :first_name, :last_name, :middle_name, :additional_name_type, :additional_name, :address, :pin_code, :date_of_birth, :gender, :ration_card, :voter_id, :national_id, :phone_home, :phone_mob)
    end
end
