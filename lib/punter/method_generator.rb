module MethodGenerator

  def add_method name, &block
    define_method name, &block
  end

end
