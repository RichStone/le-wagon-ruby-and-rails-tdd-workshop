class HelloTddWorld
  def self.default
    "Hello, TDD World!"
  end

  def self.personalized(name)
    "Hello #{name}, TDD superstar!"
  end

  def self.fun_phrases
    [
      "Red - Green - Refactor, baby!",
      "TDD will change your life!",
      "I came in red, I saw green, I refactored. - Julius Cesar"
    ]
  end

  private

    def initialize(phrase)
      @custom_phrase = phrase
    end

  public

    attr_accessor :custom_phrase

    def puts_custom_phrase
      puts custom_phrase
    end
end
