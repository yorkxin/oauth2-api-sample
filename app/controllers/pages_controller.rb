class PagesController < ApplicationController
  before_action :authenticate_user!, :only => :secret

  def welcome
  end

  def secret
  end
end
