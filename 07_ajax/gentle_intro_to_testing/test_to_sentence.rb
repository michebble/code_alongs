
# test cases

 # test(expected, actual)

require 'minitest/autorun'
require 'minitest/reporters'

Minitest::Reporters.use!(Minitest::Reporters::SpecReporter.new)


require_relative 'to_sentence'


class ToSentenceTest < Minitest::Test

  def test_to_sentence
                       #expected,                    actual
    assert_equal 'ruby, js and css', to_sentence(['ruby', 'js', 'css'])
  end
    
  def test_2_elements_in_array
    assert_equal 'ruby and js', to_sentence(['ruby', 'js'])
  end

  def test_when_1_element_in_array
    assert_equal 'ruby', to_sentence(['ruby'])
  end
  
  def test_more_than_3_in_array
    assert_equal 'ruby, js, css and python', to_sentence(['ruby', 'js', 'css', 'python'])
  end

end