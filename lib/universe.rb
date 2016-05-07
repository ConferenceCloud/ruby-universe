require "httparty"
require "json"
require "universe/configuration"
require "universe/response"
require "universe/request"

class UniverseAPI
	attr_accessor :access_token

  def initialize( auth_token )
  	@access_token = auth_token
  end

  def method_missing(method, *args)
    params = args[0].is_a?(Hash) ? args[0] : {}
    path = ""
    if not params[:id]
    	path = "/#{method}/?access_token=#{@access_token}"
    else
    	# raise MissingIdException.new("#{method.capitalize} id can not be empty.") unless params[:id]
    	path = "/#{method}/#{params.delete(:id)}?access_token=#{@access_token}"
    end
    Request.new(path, params)
  end

  class APIException < ::Exception; end
  class MissingIdException < APIException; end
end