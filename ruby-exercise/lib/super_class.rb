class SuperClass
  def self.child_count
    @@child_count
  end
  protected
  @@child_count = 0
end

class BaseClass < SuperClass
  def initialize
    @@child_count +=1
  end
end