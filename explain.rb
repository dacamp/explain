class Object
  def explain
    h = {}
    if self.is_a?(Hash)
      h[self.class.name] = returning Hash.new do |hh|
        self.each do |k,v|
          hh[k] = self[k].explain
        end
      end
    elsif self.is_a?(Array)
      h[self.class.name] = self[0].explain
    else
      return self.class.name
    end
  end
end
