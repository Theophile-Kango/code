var mySqrt = function (x) {
  if (x < 2) return x;
  let left = 1;
  let right = x;
  while (left < right) {
    let mid = Math.floor((left + right) / 2);
    if (mid * mid === x) {
      return mid;
    } else if (mid * mid > x) {
      right = mid;
    } else if (mid * mid < x) {
      left = mid + 1;
    }
  }
  return left - 1;
};

console.log(mySqrt(10));
