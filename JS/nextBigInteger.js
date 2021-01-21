const maxWithDigits = (n) =>
  +n
    .toString()
    .split("")
    .sort((a, b) => b - a)
    .join("");

const nextBigger = (n) => {
  let mx = maxWithDigits(n);
  for (let i = n + 1; i <= mx; i++) if (maxWithDigits(i) === mx) return i;
  return -1;
};

console.log(nextBigger(7));
