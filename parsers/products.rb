html = Nokogiri::HTML(content)
html.css('.ebayui-dne-item-featured-card.ebayui-dne-item-featured-card [itemscope="itemscope"]').each do |product|
  outputs << {
    name: product.css('h3').text.strip,
    price: product.css('[itemprop="price"]').text.strip
  }
end
