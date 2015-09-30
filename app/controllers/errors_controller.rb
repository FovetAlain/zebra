class ErrorsController < ApplicationController
  def not_found
  	@categories = Category.all
    render(:status => 404)
  end

  def internal_server_error
  	@categories = Category.all
    render(:status => 500)
  end
end
