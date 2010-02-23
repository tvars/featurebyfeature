class CreateFeatureRequests < ActiveRecord::Migration
  def self.up
    create_table :feature_requests do |t|
      t.text :description, :null => false
      t.string :status, :default => FeatureRequest::NEW_STATUS
      t.timestamps
    end
  end

  def self.down
    drop_table :feature_requests
  end
end
