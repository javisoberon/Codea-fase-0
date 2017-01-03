>> 5*2
=> 10
>> 5*63
=> 315
>> sqrt(7690939204)
NoMethodError: undefined method `sqrt' for main:Object
  from (irb):3
  from /Users/codea_mac_15/.rbenv/versions/2.2.4/bin/irb:11:in `<main>'
>> Math.sqrt(90)
=> 9.486832980505138
>> Math.sqrt(7690939204)
=> 87698.0
>> exit
CodeaCamp15s-Mac-mini:~ codea_mac_15$ irb
>> a = []
=> []
>> a << "hola"
=> ["hola"]
>> a << "amigo"
=> ["hola", "amigo"]
>> a.sort_by!(&:downcase)
=> ["amigo", "hola"]
>> a
=> ["amigo", "hola"]
>> a.each { |plaeholder| print plaeholder }
amigohola=> ["amigo", "hola"]
>> a.each { |plaeholder| puts plaeholder }
amigo
hola
=> ["amigo", "hola"]