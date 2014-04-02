class Object
  attr_accessor :actual, :inverted

  def it(title, &block)
    block.call
    print '.'
  rescue Exception => e
    print 'F'
    puts
    puts e.to_s
    puts e.backtrace
  end

  def expect(actual)
    self.actual = actual
    self
  end

  def not
    self.inverted = !self.inverted
    self
  end

  def to_equal(expected)
    if (self.actual != expected) ^ self.inverted
      raise RuntimeError.new("expected #{self.actual} to equal #{expected}")
    end
  end
end
