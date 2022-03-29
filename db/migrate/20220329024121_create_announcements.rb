class CreateAnnouncements < ActiveRecord::Migration[7.0]
  def change
    create_table :announcements do |t|
      t.string :message
      t.time :announcementtime
      t.string :audience
      t.string :urgency

      t.timestamps
    end
  end
end
