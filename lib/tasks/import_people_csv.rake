require 'csv'

namespace :import_people_csv do
    task :create_people => :environment do
        csv_text = File.read(Rails.root.join('lib', 'seeds', 'people.csv'))
        csv = CSV.parse(csv_text.scrub, headers: true)
        csv.each do |row|
        t = Person.new
        t.first_name = row['first_name']
        t.last_name = row['last_name']
        t.email = row['email']
        t.gender = row['gender']
        t.city = row['city']
        t.street = row['street']
        t.state = row['state']
        t.country = row['country']
        t.language = row['language']
        t.birthdate = row['birthdate']

        puts "#{t.first_name}, #{t.last_name} saved"
        t.save!
        end

        puts "There are now #{Person.count} rows in the Assistance Table"
    end
end