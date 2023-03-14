class OutputFileWriterService < ServiceObject

  def call
    purchases = @args.first
    File.open("output.txt", "w") do |file|
      purchases.each_with_index do |purchase, index|
        file.puts "Output #{index + 1}:\n" + purchase.to_s
      end
    end
  end

end

