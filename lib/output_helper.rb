# Helper class to generate the application outputs.  Runs thru printing each sort of the list of
# Person Object 'Info' to the console.
class OutputHelper
  def print_results(results)
    puts 'Output 1:'
    print_sorted_by_gender(results)
    puts "\nOutput 2:"
    print_sorted_by_date_of_birth(results)
    puts "\nOutput 3:"
    print_sorted_by_last_name(results)
  end

  def sort_results(results, output)
    case output
    when 1
      results.sort_by { |d| [d.read_gender, d.read_last_name] }
    when 2
      results.sort_by { |d| [d.read_date_of_birth_to_sort, d.read_last_name] }
    when 3
      results.sort_by(&:read_last_name).reverse
    else
      results
    end
  end

  def print_sorted_by_gender(results)
    res = sort_results(results, 1)
    res.each(&method(:print_persons))
  end

  def print_sorted_by_date_of_birth(results)
    res = sort_results(results, 2)
    res.each(&method(:print_persons))
  end

  def print_sorted_by_last_name(results)
    res = sort_results(results, 3)
    res.each(&method(:print_persons))
  end

  private

  def print_persons(result)
    puts result.info
  end
end
