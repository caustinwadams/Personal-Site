class ApplicationController < ActionController::Base

  def hello
    render html: "This is the personal site of Austin Adams.  Please come back soon for updates on me."
  end

end
