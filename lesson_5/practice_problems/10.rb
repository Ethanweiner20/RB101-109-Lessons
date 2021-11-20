# Note: Avoid direct mutation

incremented = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hsh|
  hsh.map do |key, value|
    [key, value + 1]
  end.to_h
end

p incremented

incremented = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hsh|
  new_hsh = {}
  hsh.each { |key, value| new_hsh[key] = value + 1 }
  new_hsh
end

p incremented

incremented = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].each_with_object([]) do |hsh, result|
  new_hsh = {}
  hsh.each { |key, value| new_hsh[key] = value + 1 }
  result << new_hsh
end

p incremented