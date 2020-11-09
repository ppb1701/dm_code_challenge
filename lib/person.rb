require 'date'
# The person class contains the object that takes the information from the files and provides the formatted output.
# The attributes are private and accessible thru corresponding getters and setters.  For the purposes of this exercise
# I realize that is a bit overkill but I prefer to add them to all of my object classes so they are ready to go when
# adding functionality.  The other useful component is the == for the person object that allows us to easily run the
# unit tests.  Note read_date_of_birth_to_sort formats the date into an easier to sort format.
class Person
  def initialize(last_name, first_name, middle_initial, gender, date_of_birth, favorite_color)
    self.last_name = last_name
    self.first_name = first_name
    self.middle_initial = middle_initial
    self.gender = gender.downcase.include?('f') ? 'Female' : 'Male'
    d = date_of_birth.gsub('-', '/').split('/')
    day = (d[1].to_i < 10 ? "0#{d[1]}" : (d[1]).to_s).to_s
    month = (d[0].to_i < 10 ? "0#{d[0]}" : (d[0]).to_s).to_s
    year = d[2].to_s.gsub("\n", "")
    the_date = "#{year}#{month}#{day}"
    self.date_of_birth = Date.parse(the_date)
    self.favorite_color = favorite_color
  end

  def read_last_name
    last_name
  end

  def change_last_name(text)
    self.last_name = text
  end

  def read_first_name
    first_name
  end

  def change_first_name(text)
    self.first_name = text
  end

  def read_middle_initial
    middle_initial
  end

  def change_middle_initial(text)
    self.middle_initial = text
  end

  def read_gender
    gender
  end

  def change_gender(text)
    self.gender = text.downcase.include?('f') ? 'Female' : 'Male'
  end

  def read_date_of_birth
    my_date = date_of_birth.to_s.gsub('-', '/').split('/')
    month = my_date[1].to_i.to_s
    day = my_date[2].to_i.to_s
    "#{month}/#{day}/#{my_date[0]}"
  end

  def read_date_of_birth_to_sort
    my_date = date_of_birth.to_s.gsub('-', '/').split('/')
    month = my_date[1].to_i.to_s
    day = my_date[2].to_i.to_s
    "#{my_date[0]}#{month}#{day}"
  end

  def change_date_of_birth(text)
    d = text.gsub('-', '/').split('/')
    day = (d[2].to_i < 10 ? "0#{d[2]}" : (d[2]).to_s).to_s
    month = (d[1].to_i < 10 ? "0#{d[1]}" : (d[1]).to_s).to_s
    year = d[0].to_s.gsub("\n", "")
    the_date = "#{year}#{month}#{day}"
    self.date_of_birth = Date.parse(the_date)
  end

  def read_favorite_color
    favorite_color
  end

  def change_favorite_color(text)
    self.favorite_color = text
  end

  def info
    my_date = date_of_birth.to_s.gsub('-', '/').split('/')
    month = my_date[1].to_i.to_s
    day = my_date[2].to_i.to_s
    d = "#{month}/#{day}/#{my_date[0]}"
    "#{last_name} #{first_name} #{gender} #{d} #{favorite_color}"
  end

  def ==(other)
    read_last_name == other.read_last_name && read_first_name == other.read_first_name &&
        read_gender == other.read_gender && read_middle_initial == other.read_middle_initial &&
        read_date_of_birth == other.read_date_of_birth && read_favorite_color == other.read_favorite_color

  end

  private

  attr_accessor :last_name, :first_name, :middle_initial, :gender, :date_of_birth, :favorite_color

end
