const numChars = 26 // c - number of characters

function printSortedStrings (remaining, prefix = '') { // {2, ''}, {1, 'a'}, O(c^k)
  console.log('PrintSortedStrings', remaining, prefix)
  if (remaining == 0) { // false, false, true
    if (isInOrder(prefix)){ // true
      console.log(prefix) // 'aa'
    }
  } else {
    for(let i = 0; i < numChars; i++) {
      const c = ithLetter(i) // a, a, b
      printSortedStrings(remaining - 1, prefix + c) // {1, 'a'}, {0, 'aa'}, {0, 'ab'}, ..., {0, 'az'}
    }
  }
}

function isInOrder (s) { // 'aa', O(c)
  for(let i = 1; i < s.length; i++) {
    const prev = ithLetter(s.charCodeAt(i - 1))
    const curr = ithLetter(s.charCodeAt(i))
    if (prev > curr) {
      return false
    }
  }
  return true // true
}

function ithLetter (i) {
  return String.fromCharCode('a'.charCodeAt(0) + i)
}
