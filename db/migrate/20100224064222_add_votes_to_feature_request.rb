class AddVotesToFeatureRequest < ActiveRecord::Migration
  def self.up
    add_column :feature_requests, :votes, :integer, :default => 1
  end

  def self.down
    drop_column :feature_requests, :votes
  end
end
