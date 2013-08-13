# encoding: utf-8
require 'steps/output'

def step(desc, options={}, &block)
  Steps::Output.step(desc, options, &block)
end

def confirm(message, options={})
  Steps::Output.confirm(message, options)
end

def retrieve(message, answer_type = String, &block)
  Steps::Output.retrieve(message, answer_type, &block)
end

def start_to(message)
  Steps::Output.start_to(message)
end

def success(message = "✔")
  Steps::Output.success(message)
end

def error(message = "X")
  Steps::Output.error(message)
end

def error_and_exit(message)
  Steps::Output.error_and_exit(message)
end

def report(message, color="blue", bold=true)
  message = message.send("bold") if bold
  message = message.send(color) if ['red', 'blue', 'yellow', 'green'].include? color
  step message do " " end
end

