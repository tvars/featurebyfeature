class FeatureRequestsController < ApplicationController

  before_filter :login_required, :only => [:done]

  def index
    @new_feature_request = FeatureRequest.new
    load_feature_requests
  end

  def create
    @new_feature_request = FeatureRequest.new(params['feature_request'])
    if @new_feature_request.valid?
      @new_feature_request.save!
      redirect_to :action => :index
    else
      load_feature_requests
      render :action => 'index'
    end
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

  private

  def load_feature_requests
    @backlog_feature_requests = FeatureRequest.all(:conditions => ['status = ?', FeatureRequest::NEW_STATUS], :order => 'votes desc')
    @done_feature_requests = FeatureRequest.all(:conditions => ['status = ?', FeatureRequest::DONE_STATUS], :order => 'updated_at desc')
  end
  
end
