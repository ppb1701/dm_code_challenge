require "person"
require "test/unit"
# Unit tests for the properties of the Person Object.  Primarily we need to test info for formatting, however,
# as mentioned in the Person Class comment, I'vbe added setters for completeness so I'm testing that they work as well.
class TestPerson < Test::Unit::TestCase

  def test_person_info
    test_person = Person.new('last', 'first', 'mi', 'M',
                             '1-1-1979', 'Blue')
    assert(test_person.info == 'last first Male 1/1/1979 Blue')
  end

  def test_person_last_name
    test_person = Person.new('last', 'first', 'mi', 'M',
                             '1-1-1979', 'Blue')
    assert(test_person.read_last_name == 'last')
  end

  def test_change_person_last_name
    test_person = Person.new('last', 'first', 'mi', 'M',
                             '1-1-1979', 'Blue')
    test_person.change_last_name('new name')
    assert(test_person.read_last_name == 'new name')
  end

  def test_person_first_name
    test_person = Person.new('last', 'first', 'mi', 'M',
                             '1-1-1979', 'Blue')
    assert(test_person.read_first_name == 'first')
  end

  def test_change_person_first_name
    test_person = Person.new('last', 'first', 'mi', 'M',
                             '1-1-1979', 'Blue')
    test_person.change_first_name('new name')
    assert(test_person.read_first_name == 'new name')
  end

  def test_person_mi
    test_person = Person.new('last', 'first', 'mi', 'M',
                             '1-1-1979', 'Blue')
    assert(test_person.read_middle_initial == 'mi')
  end

  def test_change_person_mi
    test_person = Person.new('last', 'first', 'mi', 'M',
                             '1-1-1979', 'Blue')
    test_person.change_middle_initial('new mi')
    assert(test_person.read_middle_initial == 'new mi')
  end

  def test_person_gender
    test_person = Person.new('last', 'first', 'mi', 'M',
                             '1-1-1979', 'Blue')
    assert(test_person.read_gender == 'Male')
  end

  def test_change_person_gender
    test_person = Person.new('last', 'first', 'mi', 'M',
                             '1-1-1979', 'Blue')
    test_person.change_gender('F')
    assert(test_person.read_gender == 'Female')
  end

  def test_person_dob
    test_person = Person.new('last', 'first', 'mi', 'M',
                             '1-1-1979', 'Blue')
    assert(test_person.read_date_of_birth == '1/1/1979')
  end

  def test_change_person_dob
    test_person = Person.new('last', 'first', 'mi', 'M',
                             '1-1-1979', 'Blue')
    test_person.change_date_of_birth('2001-12-31')
    assert(test_person.read_date_of_birth == '12/31/2001')
  end

  def test_person_fav_color
    test_person = Person.new('last', 'first', 'mi', 'M',
                             '1-1-1979', 'Blue')
    assert(test_person.read_favorite_color == 'Blue')
  end

  def test_change_person_fav_color
    test_person = Person.new('last', 'first', 'mi', 'M',
                             '1-1-1979', 'Blue')
    test_person.change_favorite_color('Red')
    assert(test_person.read_favorite_color == 'Red')
  end
end
