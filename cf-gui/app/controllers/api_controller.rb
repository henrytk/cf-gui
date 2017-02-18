require 'json'

class ApiController < ApplicationController
  def index
    path = params[:path]
    api_output = `cf curl /#{path}`
    @pretty_json = JSON.pretty_generate(JSON.parse(api_output))
  end
end
