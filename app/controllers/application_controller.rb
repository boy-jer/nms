class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :counter_session

 

private

def counter_session
	  
	@counter_session ||= session[:counter_id]
	  
end 

end
