class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.date :date
      t.time :time
      t.integer :host
      t.integer :location
      t.integer :details
      t.integer :comments
      t.integer :rsvp

      t.timestamps
    end
  end
end
