draw_counter = 0

while true do
  if draw_counter == 0
    puts "じゃんけん..."
  else
    puts "あいこで..."
  end
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"
  hand_number = gets.to_i
  
  case hand_number
  when 0
    hand = "グー"
  when 1
    hand = "チョキ"
  when 2
    hand = "パー"
  when 3
    puts "終了します"
    break
  else
    puts "エラー：0,1,2,3のいずれかを入力してください"
    puts "---------------"
    draw_counter = 0
    next
  end
  
  opponent_hand_number = rand(3)
  case opponent_hand_number
  when 0
    opponent_hand = "グー"
  when 1
    opponent_hand = "チョキ"
  when 2
    opponent_hand = "パー"
  end
  
  if draw_counter == 0
    puts "ホイ！"
  else
    puts "ショ！"
  end
  
  puts "---------------"
  puts "あなた：#{hand}を出しました"
  puts "相手：#{opponent_hand}を出しました"
  puts "---------------"
  
  if hand == opponent_hand
    draw_counter += 1
    next
  elsif (hand == "グー" && opponent_hand == "チョキ") || (hand == "チョキ" && opponent_hand == "パー") || (hand == "パー" && opponent_hand == "グー")
    winner = "あなた"
  else
    winner = "相手"
  end
  
  puts "あっち向いて〜"
  puts "0(上)1(下)2(左)3(右)"
  direction_number = gets.to_i
  
  case direction_number
  when 0
    direction = "上"
  when 1
    direction = "下"
  when 2
    direction = "左"
  when 3
    direction = "右"
  else
    puts "エラー：0,1,2,3のいずれかを入力してください"
    puts "---------------"
    draw_counter = 0
    next
  end
  
  opponent_direction_number = rand(4)
  case opponent_direction_number
  when 0
    opponent_direction = "上"
  when 1
    opponent_direction = "下"
  when 2
    opponent_direction = "左"
  when 3
    opponent_direction = "右"
  end
  
  puts "ホイ！"
  puts "---------------"
  puts "あなた：#{direction}"
  puts "相手：#{opponent_direction}"
  puts "---------------"
  
  if direction == opponent_direction
    puts "#{winner}の勝ち！"
    break
  end
  
  draw_counter = 0
end