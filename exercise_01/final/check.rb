class Check
  # This is the most used checker in any test framework.
  def is_equal?(expected, actual)
    puts "'#{expected.to_s}' == '#{actual}'"
    puts expected == actual ? "✅ pass" : "❌ fail"
  end

  # Some autorun functionality similarly to what you have in Minitest.
  @test_classes = []

  def self.inherited(child_class)
    @test_classes << child_class
  end

  def self.autorun
    @test_classes.each do |klass|
      instance = klass.new
      klass.instance_methods.grep(/check/).each do |method|

        instance.send(method)
      end
    end
  end

  END { autorun }
end
