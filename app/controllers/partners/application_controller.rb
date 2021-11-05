class Partner::ApplicationController < ActionController::Base
  before_action :authenticate_partner!
  layout 'partner'
end
