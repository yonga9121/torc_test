class ServiceObject

  def initialize(*args, &block)
    @args = args
    @block = block
  end

  def self.call(*args, &block)
    new(*args, &block).call
  end

end
