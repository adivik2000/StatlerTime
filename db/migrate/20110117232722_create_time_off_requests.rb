class CreateTimeOffRequests < ActiveRecord::Migration
  def self.up
    create_table :time_off_requests do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :time_off_requests
  end
end
