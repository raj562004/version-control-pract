
class Hangman
  def initialize
    @secret_word = generate_word
    @guessed_letters = []
    @max_attempts = 6
    @wrong_attempts = 0
    reveal_initial_letters
  end

  def start
    puts "===== HANGMAN GAME ====="
    puts "Guess the word letter by letter"
    puts "Word length: #{@secret_word.length}"
    puts "You have #{@max_attempts} wrong attempts"
    puts

    while !game_over?
      display_status
      guess = take_input
      process_guess(guess)
    end

    display_result
  end

  private

  
  def generate_word
  words = [
    "apple", "banana", "orange", "grapes", "mango",
    "computer", "keyboard", "monitor", "printer", "laptop",
    "programming", "developer", "software", "hardware",
    "terminal", "internet", "network", "database",
    "object", "method", "variable", "function", "class",
    "school", "college", "teacher", "student",
    "football", "cricket", "hockey", "tennis",
    "mountain", "river", "ocean", "forest", "desert"
  ]

  total_words = words.length

  random_index = rand(0...total_words)

  words[random_index]
end


  
  

  def reveal_initial_letters
  length = @secret_word.length

  index1 = rand(0...length)
  index2 = rand(0...length)

  
  while index2 == index1
    index2 = rand(0...length)
  end

  @guessed_letters << @secret_word[index1]
  @guessed_letters << @secret_word[index2]
end


  
  def take_input
    print "Enter a letter: "
    input = gets.chomp.downcase

    while input.length != 1 || !(input >= 'a' && input <= 'z')
      print "Invalid input. Enter a single letter: "
      input = gets.chomp.downcase
    end

    input
  end

  
  def process_guess(letter)
    if @guessed_letters.include?(letter)
      puts "You already guessed '#{letter}'"
      return
    end

    @guessed_letters << letter

    if @secret_word.include?(letter)
      puts "Good guess!"
    else
      puts "Wrong guess!"
      @wrong_attempts += 1
    end
  end

 
  def display_status
    puts
    word_display = ""

    @secret_word.each_char do |ch|
      if @guessed_letters.include?(ch)
        word_display += ch + " "
      else
        word_display += "_ "
      end
    end

    puts "Word: #{word_display.strip}"
    puts "Guessed letters: #{@guessed_letters.join(", ")}"
    puts "Wrong attempts: #{@wrong_attempts}/#{@max_attempts}"
    puts
  end

  
  def game_over?
    word_guessed? || @wrong_attempts >= @max_attempts
  end

  def word_guessed?
    @secret_word.each_char do |ch|
      return false if !@guessed_letters.include?(ch)
    end
    true
  end

  
  def display_result
    puts
    if word_guessed?
      puts "Congratulations! You guessed the word: #{@secret_word}"
    else
      puts "Game Over!"
      puts "The correct word was: #{@secret_word}"
    end
  end
end


game = Hangman.new
game.start
