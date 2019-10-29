class Application

  def call(env)
    return [200, {'Content-Type' => 'text/html'}, time_message]
  end

  def time_message
    (Time.now.to_i < 12) ? [/Morning/i] : [/Afternoon/i]
  end

end
