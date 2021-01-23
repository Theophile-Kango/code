function toCamelCase(str) {
  let character = /[-_]\w/gi;
  return str.replace(character, (elt) => elt.charAt(1).toUpperCase());
}

console.log(toCamelCase("the-stealth-warrior"));
console.log(toCamelCase("The_Stealth_Warrior"));
