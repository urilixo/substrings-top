def substrings(string, data_dictionary)
    hash = Hash.new(0)
    for i in data_dictionary do 
        if string.downcase.scan(i).count > 0
            hash[i] += string.downcase.scan(i).length
        end
    end
    puts hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)
#=> { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }

substrings("below", dictionary)
#=> { "below" => 1, "low" => 1 }