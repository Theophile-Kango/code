const power = (x, n) => {
  if (n == 0) return 1;
  if (n == 1) return x;
  if (n < 0) return power(1 / x, -n);
  let result = power(x * x, Math.floor(n / 2));
  if (n % 2) result *= x;
  return result;
};

console.log(power(2, 9));
