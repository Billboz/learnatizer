class WelcomeController < ApplicationController
  skip_after_action :authenticate, only: [ :home ]
  skip_before_action :authenticate, only: [ :home]

  def home

  end

end
