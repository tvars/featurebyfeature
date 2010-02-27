class FeatureRequest < ActiveRecord::Base

  NEW_STATUS = 'new'

  def vote
    self.update_attribute(:votes, self.votes + 1)
  end

end
