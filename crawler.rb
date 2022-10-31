require 'mechanize'
require 'byebug'
require 'spreadsheet'

# 此為證券交易所的證券商網站爬蟲
class SecuritiesListScraper
  def parse_link
    agent = Mechanize.new
    page = agent.get('https://www.twse.com.tw/zh/brokerService/brokerServiceAudit')
    begin
      link = page.link_with(text: '檔案下載', href: '/brokerService/outPutExcel').click
    rescue StandardError
      "找不到下載檔案"
    end
    xls_file = link.save
    xls_content = Spreadsheet.open(xls_file)
    content_row = xls_content.worksheet 0

    securities_list = []
    content_row.each_with_index do |_row, row_index|
      next if row_index.zero?

      securities_no = content_row.row(row_index)[0]
      securities_name = content_row.row(row_index)[1]
      securities_opened_date = content_row.row(row_index)[2]
      securities_address = content_row.row(row_index)[3]
      securities_phone = content_row.row(row_index)[4]
      data = { '證券商代號': securities_no, '證券商名稱': securities_name, '開業日': securities_opened_date,
               '地址': securities_address, '電話': securities_phone }
      securities_list.push(data)
    end
    securities_list
  end
end
