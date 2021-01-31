const add = () => {
  const f = (x) => add(n + x);
  f.valueOf = () => n;
  return f;
};

console.log(add(1));
