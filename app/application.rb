class Application

  def call(env)
    return [200, {'Content-Type' => 'text/html'}, time_message]
  end

  def time_message
    (Time.now.to_i < 12) ? ['<em> Good morning! </em>'] : ['<em> Good afternoon! </em>']
  end

end
