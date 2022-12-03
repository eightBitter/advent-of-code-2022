input = File.read("input.txt")

score_keeper = []

def match(play)
    point_chart = {"rock"=>1,"paper"=>2,"scissors"=>3,"win"=>6,"draw"=>3,"lose"=>0}

    case play[0]
    when "A"
        opponent_hand = "rock"
    when "B"
        opponent_hand = "paper"
    when "C"
        opponent_hand = "scissors"
    end

    case play[1]
    when "X"
        my_hand = "rock"
    when "Y"
        my_hand = "paper"
    when "Z"
        my_hand = "scissors"
    end

    if opponent_hand == "rock" && my_hand == "rock"
        my_result = "draw"
    elsif opponent_hand == "paper" && my_hand == "paper"
        my_result = "draw"
    elsif opponent_hand == "scissors" && my_hand == "scissors"
        my_result = "draw"
    elsif opponent_hand == "rock" && my_hand == "paper"
        my_result = "win"
    elsif opponent_hand == "rock" && my_hand == "scissors"
        my_result = "lose"
    elsif opponent_hand == "paper" && my_hand == "scissors"
        my_result = "win"
    elsif opponent_hand == "paper" && my_hand == "rock"
        my_result = "lose"
    elsif opponent_hand == "scissors" && my_hand == "rock"
        my_result = "win"
    elsif opponent_hand == "scissors" && my_hand == "paper"
        my_result = "lose"
    end

    return point_chart[my_hand] + point_chart[my_result]

end

input = input.split("\n").map{|row| row.split(" ")}

input.each{|row| score_keeper << match(row)}

puts score_keeper.sum

