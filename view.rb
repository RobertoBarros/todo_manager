class View

  def ask_user_for_description
    puts "What do you want to do?"
    return gets.chomp
  end

  def ask_user_for_index
    puts "What task number?"
    return gets.chomp.to_i - 1
  end

  def show_tasks(tasks)
    puts "---------------------------"
    tasks.each_with_index do |task, index|
      done = task.done? ? "[X]" : "[ ]"
      puts "#{index + 1} - #{done} #{task.description}"
    end
    puts "----------------------------"
  end

end