questions = [{"true && true" => true && true},
             {"false && true" => false && true},
             {"1 == 1 && 2 == 1" => 1 == 1 && 2 == 1},
             {'"test" == "test"' => "test" == "test"},
             {"1 == 1 || 2 != 1" => 1 == 1 || 2 != 1},
             {"true && 1 == 1" => true && 1 == 1},
             {"false && 0 != 0" => false && 0 != 0},
             {"true || 1 == 1" => true || 1 == 1},
             {'"test" == "testing"' => "test" == "testing"},
             {"1 != 0 && 2 == 1" => 1 != 0 && 2 == 1},
             {'"test" != "testing"' => "test" != "testing"},
             {'"test" == 1' => "test" == 1},
             {"!(true && false)" => !(true && false)},
             {"!(1 == 1 && 0 != 1)" => !(1 == 1 && 0 != 1)},
             {"!(10 == 1 || 1000 == 1000)" => !(10 == 1 || 1000 == 1000)},
             {"!(1 != 10 || 3 == 4)" => !(1 != 10 || 3 == 4)},
             {'!("testing" == "testing" && "Zed" == "Cool Guy")' => !("testing" == "testing" && "Zed" == "Cool Guy")},
             {'1 == 1 && (!("testing" == 1 || 1 == 0))' => 1 == 1 && (!("testing" == 1 || 1 == 0))},
             {'"chunky" == "bacon" && (!(3 == 4 || 3 == 3))' => "chunky" == "bacon" && (!(3 == 4 || 3 == 3))},
             {'3 == 3 && (!("testing" == "testing" || "Ruby" == "Fun"))' => 3 == 3 && (!("testing" == "testing" || "Ruby" == "Fun"))}
            ]

questions.each do |q|
  q.each do |k, v|
    LogicQuestion.create(question: k, answer: v)
  end
end
