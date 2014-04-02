class Object
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
    self
  end

  def to_equal(expected)
    if self != expected
      raise RuntimeError.new("expected #{self} to equal #{expected}")
    end
  end
end
