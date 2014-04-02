class Object
  attr_accessor :actual

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

  def to_equal(expected)
    if self.actual != expected
      raise RuntimeError.new("expected #{self.actual} to equal #{expected}")
    end
  end
end
