module RenderOrRedirect
  def render_or_redirect response, options={}
    options[:status] ||= :ok
    respond_to do |format|
      format.html { 
        if options[:redirect_url]
          redirect_options = response ? {:error => response[:error], :notice => response[:notice]} : {}
          redirect_to options[:redirect_url], redirect_options
        else
          @response = response
          render options
        end
      }
      format.json {
        render options.merge({:json => {:data => response.as_json}})
      }
    end
  end
end

class ActionController::Base
  include RenderOrRedirect
end