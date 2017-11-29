class ApplicationController < ActionController::API

  def render_success(obj = {})
    render json: {status: :OK, message: "Operacao realizada com sucesso", object: obj}
  end

  def render_error(errors = {})
    render json: {status: :ERROR, message: "Ocorreu um erro na sua solicitação", errors: errors}, status: 500
  end

  def render_error_with_message(message, errors = {})
    render json: {status: :ERROR, message: message, errors: errors}, status: 500
  end
end
