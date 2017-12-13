require "render_anywhere"

class DepositPdf
  include RenderAnywhere
  def initialize(deposit)
    @deposit = deposit
  end
  def to_pdf
    kit = PDFKit.new(as_html, page_size: 'A5')
    kit.to_file("#{Rails.root}/public/deposit.pdf")
  end
  def filename
   "Deposit #{deposit.id}.pdf"
  end

  private
    attr_reader :deposit

    def as_html
      render template: "deposits/pdf", layout: "deposit_pdf", locals: {deposit: deposit}
    end
end
