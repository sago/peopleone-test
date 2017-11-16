require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'seeds.csv')).encode!('UTF-8', 'UTF-8', :invalid => :replace)
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  i = Item.new
  i_all = Item.where(name: row['Item'])
  if i_all.empty?
    a = Area.where(name: row['Area']).first
    i.name = row['Item']
    i.area_id = a.id
    i.save
    puts "#{i.name} cat_id #{i.area_id} saved"
  end
end
