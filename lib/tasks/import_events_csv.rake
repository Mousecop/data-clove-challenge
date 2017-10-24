require 'csv'

namespace :import_events_csv do
    task :create_event => :environment do
        csv_text = File.read(Rails.root.join('lib', 'seeds', 'events.csv'))
        csv = CSV.parse(csv_text.scrub, headers: true)
        csv.each do |row|
        t = Event.new
        t.name = row['name']
        t.location = row['location']
        t.price = row['price']
        t.date = row['date']

        puts "#{t.name}, #{t.date} saved"
        t.save!
        end

        puts "There are now #{Event.count} rows in the Assistance Table"
    end
end