class Partners::ApplicationController < ActionController::Base
  before_action :authenticate_partner!

  layout 'partners'
end
