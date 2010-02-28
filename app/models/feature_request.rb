class FeatureRequest < ActiveRecord::Base

  NEW_STATUS = 'new'
  DONE_STATUS = 'done'

  validates_presence_of :description, :submitted_by_name, :submitted_by_email
  validates_format_of :submitted_by_email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

  def vote
    self.update_attribute(:votes, self.votes + 1)
  end

  def done
    self.update_attribute(:status, DONE_STATUS) unless self.status == DONE_STATUS
  end

end
