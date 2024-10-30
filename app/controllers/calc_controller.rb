class CalcController < ApplicationController
  def square_form
    render(template: "templates/square_form")
  end

  def square
    @the_num = params.fetch("number").to_f
    @the_result = @the_num ** 2.0
    render(template: "templates/square_results")
  end

  def square_root_form
    render(template: "templates/square_root_form")
  end

  def square_root
    @the_num = params.fetch("users_number").to_f
    @the_result = @the_num ** 0.5
    render(template: "templates/square_root_results")
  end

  def payment_form
    render(template: "templates/payment_form")
  end

  def payment
    @apr = params.fetch("user_apr").to_f
    @monthly_yield = @apr/100.0/12.0
    @years = (params.fetch("user_years").to_f)
    @months = @years*12
    @principal = params.fetch("user_pv").to_f
    @numerator = @monthly_yield * @principal
    @denominator = (1 - (1 + @monthly_yield)** (-1*@months))
    @the_result = @numerator/@denominator
    render(template: "templates/payment_results")
  end
  def random_form
    render(template: "templates/random_form")
  end

  def random
    @min = params.fetch("user_min").to_f
    @max = params.fetch("user_max").to_f
    @the_result = rand(@min .. @max)
    render(template: "templates/random_results")
  end


end
