#let transpose(arr) = {

  let first_dim = arr.len()
  let second_dim = arr.at(0).len()

  let new_array = ()
  for new_first in range(0,second_dim){
    let inner_array = ()
    for new_second in range(0,first_dim){
      inner_array.push(arr.at(new_second).at(new_first))
    }
    new_array.push(inner_array)
  }

  return new_array
}


#let test = {

  let a = ((1,2,3),(4,5,6),(7,8,9),(10,11,12))
  let b_expected = ((1,4,7,10),(2,5,8,11),(3,6,9,12))

  let b = transpose(a)

  if b != b_expected{
    panic("TestSuit: Transposes not equal")
  }  
}


#test
