class Catechism::ItBlock < Struct.new(:description)
  attr_accessor :actual, :inverted

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
      if self.inverted
        raise RuntimeError.new("expected #{self.actual} not to equal #{expected}")
      else
        raise RuntimeError.new("expected #{self.actual} to equal #{expected}")
      end
    end
  end
end
