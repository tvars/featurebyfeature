class FeatureRequest < ActiveRecord::Base

  NEW_STATUS = 'new'
  DONE_STATUS = 'done'

  def vote
    self.update_attribute(:votes, self.votes + 1)
  end

  def done
    self.update_attribute(:status, DONE_STATUS) unless self.status == DONE_STATUS
  end

end
