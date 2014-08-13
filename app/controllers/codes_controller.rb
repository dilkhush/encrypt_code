class CodesController < ApplicationController

  before_action :set_code, only: [:encrypt_message]
  before_action :check_errors, only: [:encrypt_message]

  def home
  end

  def encrypt_message
    @message = @code.get_encrypt_message
  end

  private
  def set_code
    message, keys = params[:code][:message].gsub(/\s+/, ""), params[:code][:keys].to_i
    message_size = message.length
    @code = Code.new(message, keys, message_size)
  end
end
