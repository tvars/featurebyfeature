class FeatureRequestsController < ApplicationController

  def index
    @feature_requests = FeatureRequest.all
    @new_feature_request = FeatureRequest.new
  end

  def create
    FeatureRequest.create!(:description => params['feature_request']['description'])
    redirect_to :action => :index
  end

end
