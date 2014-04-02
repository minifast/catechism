class Object
  def it(title, &block)
    Catechism::ItBlock.new(title).instance_eval(&block)
    print '.'
  rescue Exception => e
    print 'F'
    puts
    puts e.to_s
    puts e.backtrace
  end
end
