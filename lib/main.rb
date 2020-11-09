
require_relative 'person'
require_relative 'file_helper'
require_relative 'output_helper'

fh = FileHelper.new()
oh = OutputHelper.new()
results = fh.read_files
oh.print_results(results)
