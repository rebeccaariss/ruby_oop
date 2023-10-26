module Brew
  def brew(type)
    puts "Now brewing #{type} tea. ✨🫖🍵"
  end
end

class Tea # don't forget to capitalize classes
  include Brew
end

earl_grey = Tea.new

earl_grey.brew("earl grey")