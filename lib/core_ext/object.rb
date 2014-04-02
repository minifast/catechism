class Object
  def it(title, &block)
    block.call
    print '.'
  end
end
