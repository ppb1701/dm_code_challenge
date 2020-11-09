require "person"
require "file_helper"
require "test/unit"

# Unit tests for the file helper.  We are checking each file has correctly read and added a Person object by comparing
# a manually created instance of the first line of each file.
class TestFile < Test::Unit::TestCase
  def test_comma_file_read
    fh = FileHelper.new
    results = fh.read_comma_file
    test_person = Person.new('Abercrombie', 'Neil', '', 'Male',
                             '2/13/1943', 'Tan')
    assert_equal(results[0], test_person)
  end

  def test_space_file_read
    fh = FileHelper.new
    results = fh.read_space_file
    test_person = Person.new('Kournikova', 'Anna', 'F', 'F',
                             '6-3-1975', 'Red')
    assert_equal(results[0], test_person)
  end

  def test_pipe_file_read
    fh = FileHelper.new
    results = fh.read_pipe_file
    test_person = Person.new('Smith', 'Steve', 'D', 'M',
                             '3-3-1985', 'Red')
    assert_equal(results[0], test_person)
  end
end
