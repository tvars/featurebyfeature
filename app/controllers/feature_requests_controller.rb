class FeatureRequestsController < ApplicationController

  before_filter :login_required, :only => [:done]

  def index
    @feature_requests = FeatureRequest.all
    @new_feature_request = FeatureRequest.new
  end

  def create
    FeatureRequest.create!(:description => params['feature_request']['description'])
    redirect_to :action => :index
  end

  def vote
    feature_request = FeatureRequest.find(params[:id])
    feature_request.vote
    render :text => feature_request.votes 
  end

  def done
    feature_request = FeatureRequest.find(params[:id])
    feature_request.done
    redirect_to :action => :index
  end
  
end
