
class Boss
  def prepare_text(text)
    text
  end
end

class SuperSay < Boss

  def say(text)
    prepare_text(text)
  end

end

class HtmlSay < Boss

  def say(text)
    "<p>" + prepare_text(text) + "</p>"
  end

end

# class CssSay < Boss

#   def say(text)
#     "<p>" + prepare_text(text) + "</p>"
#   end

# end

doc = HtmlSay.new
style = SuperSay.new
#test
p doc.say("You've refactored") == "<p>You've refactored</p>"
p style.say("I like to code") == "I like to code"

