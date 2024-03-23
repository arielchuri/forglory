# loop
Anydice N over {1..12} {
  output Nd{0,0,0,1,2,3} named "[N]d6"
}
## Anydice old
BASEDIE: d6

function: target TARGET:n reroll REROLL:n VALUE:n {
  if VALUE = REROLL {
    result: 1 + [target TARGET reroll REROLL BASEDIE]
  }
  if VALUE  > TARGET {
    result: 1
  }
  result: 0
}

DIE: [target 3 reroll 6 BASEDIE]

loop N over {1..10}{
  output NdDIE named "[N]"
}
