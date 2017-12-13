class DownloadsController < ApplicationController

  def show
    respond_to do |format|
      format.pdf { send_invoice_pdf }
    end
  end

  private

  def deposit_pdf
    deposit = Deposit.find(params[:deposit_id])
    DepositPdf.new(deposit)
  end

  def send_invoice_pdf
    send_file deposit_pdf.to_pdf,
      filename: deposit_pdf.filename,
      type: "application/pdf",
      disposition: "inline"
  end
end
