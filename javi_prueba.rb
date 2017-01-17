

def do_this_block
   block  = yield
end

puts do_this_block { 1+1 }

name = "Fernando"

do_this_block { puts name * 2 } 
    
