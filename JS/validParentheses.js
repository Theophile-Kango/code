function validParentheses(parens) {
  if (parens == "") return false;
  return !parens.split("").reduce((uptoPrevChar, thisChar) => {
    if (thisChar === "(") {
      return ++uptoPrevChar;
    } else if (thisChar === ")") {
      return --uptoPrevChar;
    }

    return uptoPrevChar;
  }, 0);
}

console.log(validParentheses(""));
console.log(validParentheses("())"));
