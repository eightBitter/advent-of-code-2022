# find the highest sum of calories among the calory clusters

data = File.read("input.txt")
data = data.split("\n\n")
data = data.map{|thing| thing.split("\n")}

sums = []

def sum(arr)
    v = 0
    arr.each do |n|
        v = v + n
    end
    v
end

data.each do |calorie_block|
    sums << calorie_block.map{|num| num.to_i}.sum
end

# Part 1 answer
puts sums.sort

sums.sort! {|a,b| b<=>a}

# Part 2 answer
puts [sums[0],sums[1],sums[2]].sum