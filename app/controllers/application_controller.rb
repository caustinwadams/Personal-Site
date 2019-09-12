class ApplicationController < ActionController::Base

  def hello
    render html: "This is the personal site of Austin Adams."
  end

end
