class ServerController < ApplicationController
  before_action :set_params, only: :result
  before_action :squares, only: :result
  before_action :make_hash, only: :result

  include ServerHelper

  def result
    render xml: @hash
  end
end
