class ApplicationController < ActionController::Base

    def blank_square_form
      render({ :template => "calculation_templates/square_form.html.erb"})
    end

    def calculate_square
      # params = {elephant"=>"42"}

      @num = params.fetch("elephant").to_f
      @square_of_num = @num * @num

      render({ :template => "calculation_templates/square_results.html.erb"})
    end

    def blank_random_form
      render({ :template => "calculation_templates/random_form.html.erb"})
    end

    def calculate_random
      @lower = params.fetch("user_min").to_f
      @upper = params.fetch("user_max").to_f
      @result = rand(@lower..@upper)
      render({ :template => "calculation_templates/rand_results.html.erb"})

    end

    def blank_square_root_form
      render({ :template => "calculation_templates/squareroot_form.html.erb"})
    end

    def calculate_square_root
      @number = params.fetch("user_number").to_f
      @sqrt_number = @number ** 0.5
      render ({ :template => "calculation_templates/squareroot_results.html.erb"})
    end

    def blank_payment_form
      render({ :template => "calculation_templates/payment_form.html.erb"})
    end

    def calculate_payment
      @apr_num = params.fetch("user_apr").to_f
      @years_num = params.fetch("user_years").to_f
      @principal_num = params.fetch("user_pv").to_f
      @payment_num = ((@principal_num  * (@apr_num / 100 / 12)) / (1-((1 + (@apr_num / 100 / 12)) ** (-1 * @years_num * 12))))
      render({ :template => "calculation_templates/payment_results.html.erb"})
    end

end
