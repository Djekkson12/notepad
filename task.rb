require 'date'
class Task < Post

  def initialize
    super

    @due_date = Time.now
  end

  def read_from_console
    puts "Что мне сделать?"
    @text = STDIN.gets.chomp

    puts "К какому числу? Укажи дату в формате ДД.ММ.ГГГГ, например 12.05.1995"
    input = STDIN.gets.chomp

    @due_date = Date.parse(input)
  end


  def to_strings
    time_string = "Создано: #{@created_at.strftime("%Y. %m.%d, %H:%M:%S")} \n\r \n\r"

    deadline = "Срок: #{@due_date}"

    return [deadline, @text, time_string]

  end

end
