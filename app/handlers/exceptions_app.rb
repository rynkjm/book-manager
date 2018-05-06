class ExceptionsApp < Rambulance::ExceptionsApp

  def bad_request
    # 400
    binding.pry
  end

  def forbidden
    # 403
  end

  def not_found
    # 404
  end

  def unprocessable_entity
    # 422
  end

  def internal_server_error
    # 500
  end
end
