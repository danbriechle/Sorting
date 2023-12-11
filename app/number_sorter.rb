# frozen_string_literal: true

class NumberSorter
  def initialize(left, right)
    @left = left
    @right = right
  end

  def sensible_sort
    (@left + @right).sort
  end

  def comp_sci_degree_sort
    new_arry = []

    while (@left + @right).length > 0
      if @right.empty?
        new_arry << @left.shift
      elsif @left.empty?
        new_arry << @right.shift
      elsif @left[0] > @right[0]
        new_arry << @right.shift
      else
        new_arry << @left.shift
      end
    end

    new_arry
  end
end
