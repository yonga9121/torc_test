# frozen_string_literal: true

require_relative "torc_test/version"
require_relative "services/input_file_reader_service"
require_relative "services/reciept_service"
require_relative "services/output_file_writer_service"

module TorcTest
  class Error < StandardError; end
  OutputFileWriterService.call( RecieptService.call( ImputFileReaderService.call ) )
end
