const permutation = (str, prefix) => {
  if (str === '') {
    return console.log(prefix) // n! times
  }

  for (let i = 0; i < str.length; i++) { // once for each position
    const rem = str.substring(0, i) + str.substring(i + 1)
    permutation(rem, prefix + str[i])
  }
}

permutation('abc', '')

/*
Execution:
{'abc', ''}
  {'bc', 'a'}
    {'c', 'ab'}
      {'', 'abc'}
        prints 'abc'
    {'b', 'ac'}
      {'', 'acb'}
        prints 'acb'
  {'ac', 'b'}
    {'c', 'ba'}
      {'', 'bac'}
        prints 'bac'
    {'a', 'bc'}
      {'', 'bca'}
        prints 'bca'
  {'ab', 'c'}
    {'b', 'ca'}
      {'', 'cab'}
        prints 'cab'
    {'a', 'cb'}
      {'', 'cba'}
        prints 'cba'
 */
