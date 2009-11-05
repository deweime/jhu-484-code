# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  
  auto_complete_for :engineer, :lname
  
  def get_time
    puts "*** Executed get time"
    #render(:text => "<p>The time is <b>" + DateTime.now.to_s + "</b></p>")
    
    render :update do |page|
        page.replace_html 'time_div', :partial => "shared/time_partial"
       page.visual_effect :highlight, 'time_div'
        page.visual_effect :shake, 'time_div'
        
    end
  end
  

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
end
