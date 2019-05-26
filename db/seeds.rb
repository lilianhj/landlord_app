# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

# csv_text = File.read(Rails.root.join('lib', 'seeds', 'Problem_Landlord_List.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# csv.each do |row|
# 	t = Transaction.new
# 	t.landlord_name = row['RESPONDENT']
# 	t.address = row['ADDRESS']
# 	t.save
# 	puts "#{t.landlord_name}, #{t.address} saved"
# end

# puts "There are now #{Transaction.count} rows in the table"
# puts csv_text

# https://gist.github.com/arjunvenkat/1115bc41bf395a162084

csv_text = File.read(Rails.root.join('lib', 'seeds', 'Problem_Landlord_List.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
    Complaint.create(:landlord_name => row['RESPONDENT'], :address => row['ADDRESS'])
  end

# then run: rake db:seed
# this taken from: https://stackoverflow.com/questions/32804017/how-to-insert-only-a-few-columns-from-a-csv-into-a-table
# to delete all entries in table: https://www.dxw.com/2014/04/ruby-on-rails-deleting-all-data-from-a-table/
# to check if seeded: rails runner 'p Complaint.pluck :landlord_name'
# from https://davidmles.com/seeding-database-rails/
