# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'Problem_Landlord_List.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
	t = Transaction.new
	t.landlord_name = row['RESPONDENT']
	t.address = row['ADDRESS']
	t.save
	puts "#{t.landlord_name}, #{t.address} saved"
end

puts "There are now #{Transaction.count} rows in the table"
# puts csv_text

# https://gist.github.com/arjunvenkat/1115bc41bf395a162084