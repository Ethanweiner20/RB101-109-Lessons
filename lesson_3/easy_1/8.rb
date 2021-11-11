flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

flintstones = flintstones.select { |name, _| name == "Barney" }.to_a.flatten
p flintstones

# Easy solution
flinstones.assoc("Barney")
