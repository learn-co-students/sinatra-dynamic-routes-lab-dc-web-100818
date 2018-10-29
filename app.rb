require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    params[:name].reverse
  end

  get "/square/:number" do
    result = params[:number].to_i * params[:number].to_i
    result.to_s
  end

  get '/say/:number/:phrase' do
    phrases = []
    params[:number].to_i.times do
      phrases << params[:phrase]
    end
    phrases
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params.values.join(' ') + "."
  end

  get '/:operation/:number1/:number2' do
    op = params[:operation]
    num1, num2 = params[:number1].to_i, params[:number2].to_i
    if op == "add"
      result = num1 + num2
    elsif op == "subtract"
      result = num1 - num2
    elsif op == "multiply"
      result = num1 * num2
    elsif op == "divide"
      result = num1 / num2
    end
    result.to_s
  end

end
