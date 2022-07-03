

function testProc (array) {

  if (array.length < 3) return -1;
  const mySet = new Set();
  
  array.forEach(el => mySet.add(el));

  let sum = Array.from(mySet).reduce((a,b) => a + b);
  sum *= 2;

  let arraySum = array.reduce((a,b) => a + b);
  
  return sum - arraySum

}



console.log(testProc([2,4,5,6,7,6,5,4,2]))