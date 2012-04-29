class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :set_mobile_format
  
  def index
    
  end
  
  def fallthrough
    
  end
  
private

  def mobile_client?
    params[:mobile].present?
  end
  
  def set_mobile_format
    request.formats.unshift(Mime::MOBILE) if mobile_client?
  end
  
end
