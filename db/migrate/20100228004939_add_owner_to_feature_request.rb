class AddOwnerToFeatureRequest < ActiveRecord::Migration
  def self.up
    add_column :feature_requests, :submitted_by_name, :string
    add_column :feature_requests, :submitted_by_email, :string
  end

  def self.down
    drop_column :feature_requests, :submitted_by_name
    drop_column :feature_requests, :submitted_by_email
  end
end
