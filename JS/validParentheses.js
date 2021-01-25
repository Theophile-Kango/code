function validParentheses(parens) {
  // return !parens.split("").reduce((uptoPrevChar, thisChar) => {
  //   if (thisChar === "(") {
  //     return ++uptoPrevChar;
  //   } else if (thisChar === ")") {
  //     return --uptoPrevChar;
  //   }

  //   return uptoPrevChar;
  // }, 0);

  let length = parens.length / 2;

  for (let i = 0; i <= length; ++i) {
    parens = parens.replace("()", "");
  }

  return parens == "";
}

console.log(validParentheses("(())((()())())"));
console.log(validParentheses("())"));
