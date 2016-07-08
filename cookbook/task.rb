class Task
  attr_reader :description, :done

  def initialize(description)
    @description = description
    @done = false
  end

  def toggle_as_done
    @done = !@done
  end
end
