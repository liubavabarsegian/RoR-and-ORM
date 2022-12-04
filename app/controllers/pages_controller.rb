class PagesController < ApplicationController
  include PagesHelper
  def form
  end

  def output
    @input = params[:num].to_i
    
    if (find_n(@input))
      @result_m = find_n(@input).result
      @count = find_n(@input).count
    else 
      @result_m = mersenne_to_n(@input)
      add_to_db(@input, @result_m)
    end
    
  end
end
