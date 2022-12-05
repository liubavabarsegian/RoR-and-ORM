class PagesController < ApplicationController
  include PagesHelper
  def form
  end

  def output
    @input = params[:num].to_i

    @new_elem = Mersenne.new(mersenne_params)
    puts "AAAAA" 
    puts @new_elem.valid?
    unless @new_elem.valid?
      flash[:error] = "Your stupid ass entered a non-positive value"
      redirect_to form_path
      return
    end

    if (find_n(@input))
      @result_m = find_n(@input).result.split(' ')
      @count = find_n(@input).count
      logger.debug "HERE IS THE RESULT CLASS"
      logger.debug find_n(@input).result
      logger.debug find_n(@input).result.class
    else 
      @result_m = mersenne_to_n(@input)
      add_to_db(@input, @result_m)
    end
  end

  def db_to_xml
    render xml: Mersenne.all.limit(10)
  end
end
