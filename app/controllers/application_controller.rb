class ApplicationController < ActionController::Base
  protect_from_forgery
  def check_errors
    keys = params[:code][:keys].to_i
    if keys < 0 || keys > 10
      @errors = "keys should be between 0 to 10"
      respond_to do |format|
        format.js {render :action=>"show_errors.js"}
      end
    end
  end
end
