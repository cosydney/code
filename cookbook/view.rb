class View
  def display_all_tasks(tasks)
    tasks.each_with_index do |task, index|
      done = task.done ? "[*]" : "[ ]"
      puts "#{index + 1} - #{done} #{task.description}"
    end
  end

  def get_task
    puts "What task do you have in mind?"
    get_input
  end

  def mark_task

  end

  def delete_task

  end

  def get_task_index
    puts "What task (enter number)?"
    get_input.to_i
  end
end

