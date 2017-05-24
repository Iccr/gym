require 'application_responder'
module Api
  module V1
    # base api controller class
    class APIController < ActionController::API
      include JsonApiResponders
    end
  end
end