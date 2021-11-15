class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.integer :name
      t.integer :hosted_events
      t.integer :interested_events
      t.string :password

      t.timestamps
    end
  end
end
