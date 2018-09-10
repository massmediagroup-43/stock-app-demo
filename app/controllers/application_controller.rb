class ApplicationController < ActionController::Base
  rescue_from ActiveRecord::RecordNotFound do
    head :not_found
  end
end
