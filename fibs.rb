#n = 5
#f[]
#i = 0, f[0]
#i = 1, f[0,1]
#i = 2, f[(2-1 + 2-2)] = f[1] + f[0] = (1 + 0), f[0,1,1]
#i = 3, f[(3-1 + 3-2)] = f[2] + f[1] = (1 + 1), f[0,1,1,2]
#i = 4, f[(4-1 + 4-2)] = f[3] + f[2] = (2 + 1), f[0,1,1,2,3]
#i = 5, f[(5-1 + 5-2)] = f[4] + f[3] = (3 + 2), f[0,1,1,2,3,5]

def fibs(i, f = [])
  for n in 0...i + 1
    n < 2? f << n : f << f[n-1] + f[n-2]
  end
  return f
end

def fibs_rec(i, n = 0, f = [])
  return f if n > i
  n < 2? f << n : f << f[n-1] + f[n-2]
  fibs_rec(i, n + 1, f)
end

p fibs(50)
puts "\n"
p fibs_rec(50)
