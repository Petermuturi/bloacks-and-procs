def proc_math
  Proc.new { return 1 + 1 }.call
  return 2 + 2
end
 

def lambda_math
  lambda { return 1 + 1 }.call
  return 2 + 2
end
 
