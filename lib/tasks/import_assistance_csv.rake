require 'csv'

namespace :import_assistance_csv do
    task :create_assistance => :environment do
        csv_text = File.read(Rails.root.join('lib', 'seeds', 'assistance.csv'))
        csv = CSV.parse(csv_text.scrub, headers: true)
        csv.each do |row|
        t = Assistance.new
        t.person_id = row['person_id']
        t.event_id = row['event_id']

        puts "#{t.person_id}, #{t.event_id} saved"
        t.save!
        end

        puts "There are now #{Assistance.count} rows in the Assistance Table"
    end
end