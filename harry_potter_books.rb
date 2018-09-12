class HPBooks

  def initialize
    @total = 0
  end

  def buy_books(*number_of_books)


    while number_of_books.any? { |x| x > 0 }
      number_in_set = number_of_non_zero_elements(number_of_books)


      case number_in_set
        when 5
          discount_percent = 0.25

        when 4
          discount_percent = 0.20

        when 3
          discount_percent = 0.10

        when 2
          discount_percent = 0.05

        when 1
          discount_percent = 0
      end

      discount = (number_in_set * 8) * discount_percent
      subtotal = (number_in_set * 8) - discount


      sub_one_from_each_element(number_of_books)
      @total += subtotal
    end
    @total

  end


  def number_of_non_zero_elements(array)
    array.count { |x| x > 0 }

  end

  def sub_one_from_each_element(array)
    array.map! { |x| x-1 }
  end


end