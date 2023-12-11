# frozen_string_literal: true

require 'pry'
require 'minitest/autorun'
require_relative '../app/number_sorter'

class NumberSorterTest < Minitest::Test
  def test_it_exists
    assert_instance_of(NumberSorter, NumberSorter.new([],[]))
  end

  def test_it_can_sort_by_sensible_means
    array_1 = [7, 14, 22]
    array_2 = [7,9,15]
    sorter = NumberSorter.new(array_1, array_2)

    assert_equal(sorter.sensible_sort, [7, 7, 9, 14, 15, 22])
  end


  def test_it_can_sort_by_hand_rolled_sort
    array_1 = [7, 14, 22]
    array_2 = [7, 9, 15]
    sorter = NumberSorter.new(array_1, array_2)
    
    assert_equal(sorter.comp_sci_degree_sort, [7, 7, 9, 14, 15, 22])
  end
end
