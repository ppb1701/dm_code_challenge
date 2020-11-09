require "person"
require "file_helper"
require "output_helper"
require "test/unit"

# Unit tests for the output helper.  We are checking that the outputted info from the Person object matches the
# expected info by checking each file's first line.
class TestOutput < Test::Unit::TestCase
  def test_output_comma
    fh = FileHelper.new
    results = fh.read_comma_file
    assert(results[0].info == 'Abercrombie Neil Male 2/13/1943 Tan')
  end

  def test_output_space
    fh = FileHelper.new
    results = fh.read_space_file
    assert(results[0].info == 'Kournikova Anna Female 6/3/1975 Red')
  end

  def test_output_pipe
    fh = FileHelper.new
    results = fh.read_pipe_file
    assert(results[0].info == 'Smith Steve Male 3/3/1985 Red')
  end

  def test_sorted_output_comma
    fh = FileHelper.new
    oh = OutputHelper.new
    results = oh.sort_results(fh.read_comma_file, 1)
    assert(results[0].info == 'Kelly Sue Female 7/12/1959 Pink')
  end

  def test_sorted_output_space
    fh = FileHelper.new
    oh = OutputHelper.new
    results = oh.sort_results(fh.read_space_file, 2)
    assert(results[0].info == 'Seles Monica Female 12/2/1973 Black')
  end

  def test_sorted_output_pipe
    fh = FileHelper.new
    oh = OutputHelper.new
    results = oh.sort_results(fh.read_pipe_file, 3)
    assert(results[0].info == 'Smith Steve Male 3/3/1985 Red')
  end
end
