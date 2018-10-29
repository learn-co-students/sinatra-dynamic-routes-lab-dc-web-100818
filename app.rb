require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @sqr = @num * @num
    "#{@sqr}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
      @phrase * @num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @arr = []
    @arr << params[:word1]
    @arr << params[:word2]
    @arr << params[:word3]
    @arr << params[:word4]
    @arr << params[:word5]
    @arr.join(" ") + "."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if @operation == 'add'
      @result = @num1 + @num2
    elsif @operation == 'subtract'
      @result = @num1 - @num2
    elsif @operation == 'multiply'
      @result = @num1 * @num2
    elsif @operation == 'divide'
      @result = @num1 / @num2
    end
    "#{@result}"
  end

end
