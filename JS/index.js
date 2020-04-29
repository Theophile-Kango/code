function repeatedString(s, n) {
    let arr = [];
    let newArr = [];

    let count = 0;

    if (s.length == 1) {
        return n;
    } else {

        while (arr.length < n) {
            for (let i = 0; i < s.length; i++) {
                arr.push(s.charAt(i));
            }
        }
        arr.splice(n, arr.length - n);


        for (let i = 0; i < arr.length; i++) {
            if (arr[i] == 'a') {
                count++;
            }
        }
        return count;
    }
}
console.log(repeatedString('a', 1000000000000));