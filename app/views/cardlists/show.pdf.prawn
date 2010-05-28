vslip_width = 180.0

errors ||= []
cards = []
@cardlist.line_items.each do |line_item| 
  line_item.quantity.times do
    cards << line_item.card
  end
end

if pdf.page_size == "A4"
  padding = 9.0
elsif pdf.page_size == "LETTER"
  padding = 5.0
end

y = pdf.bounds.top
x = pdf.bounds.left - 2*padding

# Cover Page (Still in work)

#pdf.text @cardlist.title + " - " + @cardlist.user.name + " @ " +
#  @cardlist.updated_at.month.to_s + "." + @cardlist.updated_at.day.to_s + "." + @cardlist.updated_at.year.to_s
#pdf.text pdf.page_size
#pdf.image RAILS_ROOT + '/public/images/vkit_logo.png'
#pdf.start_new_page

# Virtual Cards
cards.each { |card|
  filename = RAILS_ROOT + '/public' + card.vslip_url

  begin
    img = Prawn::Images::PNG.new(File.open(filename.downcase,"rb") { |f| f.read })
    scale = vslip_width / img.width
    scaled_height = scale * img.height

    if y - scaled_height <= pdf.bounds.bottom
      x = x + vslip_width + padding
      y = pdf.bounds.top
      if x >= pdf.bounds.right
        x = pdf.bounds.left - 2*padding
        pdf.start_new_page
      end
    end
    pdf.image filename.downcase, :at => [x,y], :width => vslip_width
    y -= (scaled_height + padding)
  rescue
    errors << card
  end
  
}

# Errors page
if not errors.empty?
  pdf.start_new_page
  pdf.text "The following errors occured:"
  pdf.text "\n"
  errors.each { |e| pdf.text "Error: Card ##{e.id.to_s} #{e.title} not found." }
  pdf.text "\n"
  pdf.text "Please send an email to bugs@swccgvkit.com with the error messages you received."
end