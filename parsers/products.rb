html = Nokogiri::HTML(content)
html.css('.ebayui-dne-item-featured-card.ebayui-dne-item-featured-card [itemscope="itemscope"]').each do |product|
  name = product.css('h3').text.strip
  if name =~ /black/i
    url = product.css('[itemprop="url"]').attr('href').text.strip
    pages << {
      url: url,
      page_type: 'single_product'
    }
  end
end
