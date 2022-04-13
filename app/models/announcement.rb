require 'active_support/all'

class Announcement < ApplicationRecord
    def self.populate_from_airtable
        @@client = Airtable::Client.new("keyuszZsBlgcxdMAy")
        @@table = @client.table("keyuszZsBlgcxdMAy", "announcements")
        @@records = @table.records
        Announcement.delete_all
        @@records.each do |record|
            Announcement.create({message: record[:event_name], eventtime:[:event_time]})
        end 
    end
end
