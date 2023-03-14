require_relative "../service_object"

class ImputFileReaderService < ServiceObject

  INPUT_REGEX = /^Input [0-9]+:$/
  INPUT_CONTENT_REGEX = /^[0-9] (\b(?!at\b)\w+ )*\b(at \b)[0-9]*\.[0-9]*$/
  FILE_PATH = 'input.txt'

  def call
    inputs = []
    File.open(FILE_PATH, 'r') do |file|
      file.each_line do |line|

        if INPUT_REGEX.match(line)
          inputs << []
          next
        end

        if INPUT_CONTENT_REGEX.match(line)
          inputs.last << line
          next
        end

      end
    end

    inputs
  end

end
