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

  def expect
  end
end
