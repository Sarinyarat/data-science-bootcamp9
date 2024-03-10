game <- function() {
    print("Hello, welcome to the game !!!")
    flush.console()
    user_name <- readline("what's your name : ")
    print("input 1 = ✊")
    print("input 2 = ✌")
    print("input 3 = 🤚")
    print("input 0 = final")
    print("----- Let's play game -----")
    hands <- c("✊", "✌", "🤚")
    flush.console()
    user_hand <- readline("input : ")
    user_score <- 0
    com_score <- 0

    while (user_hand>0) {
      com_hand <- sample(hands, 1)
      index <- as.integer(user_hand)
      if (hands[index] == com_hand)
        user_score = user_score + 0
      else if (hands[index] == "✊" & com_hand == "✌")
        user_score = user_score + 1
      else if  (hands[index] == "✌" & com_hand == "🤚")
        user_score = user_score + 1
      else if  (hands[index] == "🤚" & com_hand == "✊")
        user_score = user_score + 1
      else if (hands[index] == "✊" & com_hand == "🤚")
        com_score = com_score + 1
      else if  (hands[index] == "✌" & com_hand == "✊")
        com_score = com_score + 1
      else if  (hands[index] == "🤚" & com_hand == "✌")
        com_score = com_score + 1
      print(paste("user : ", hands[index], " computer : ", com_hand, "  user score = ", user_score, " computer score = ", com_score))
      flush.console()
      user_hand <- readline("input : ")
    }
    print(paste("summary  ", "  user score = ", user_score, " computer score = ", com_score))
}

game()
