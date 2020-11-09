# Helper class that reads in the input files, loads each line into a person object,
# and adds that new person to an array of persons
class FileHelper

  def read_files
    results = Array.new
    file_results = [read_comma_file, read_space_file, read_pipe_file]
    file_results.each do |file|
      file.each do |result|
        results.push(result)
      end
    end
    results
  end

  def read_comma_file
    lines = split_file_to_lines('files/comma.txt')
    result = Array.new
    lines.each do |line|
      person_line = line.split(', ')
      p = Person.new(person_line[0], person_line[1], '',
                     person_line[2].to_s.downcase.include?('f') ? 'Female' : 'Male', person_line[4], person_line[3])
      result.push(p)
    end
    result
  end

  def read_space_file
    lines = split_file_to_lines('files/space.txt')
    result = Array.new
    lines.each do |line|
      person_line = line.split(' ')
      p = Person.new(person_line[0], person_line[1], person_line[2],
                     person_line[3].to_s.downcase.include?('f') ? 'Female' : 'Male', person_line[4], person_line[5])
      result.push(p)
    end
    result
  end

  def read_pipe_file
    lines = split_file_to_lines('files/pipe.txt')
    result = Array.new
    lines.each do |line|
      person_line = line.split(' | ')
      p = Person.new(person_line[0], person_line[1], person_line[2],
                     person_line[3].to_s.downcase.include?('f') ? 'Female' : 'Male', person_line[5], person_line[4])
      result.push(p)
    end
    result
  end

  def split_file_to_lines(file)
    lines = Array.new
    File.open(file, 'r') do |handle|
      handle.each_line do |line|
        lines << line
      end
    end
    lines
  end
end
