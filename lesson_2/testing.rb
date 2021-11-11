a = 1

def method
  yield()
end

method { puts a }