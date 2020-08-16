html = Nokogiri::HTML(content)

name = html.css('[itemprop="name"]').text.strip
status = html.css('#vi-itm-cond').text.strip
price = html.css('#prcIsum').text.strip.match(/([0-9]|\.)+/).to_s

outputs << {
  name: name,
  status: status,
  price: price.to_f
}
