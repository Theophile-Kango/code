function fibonachi(num){
    return (num < 2) ? 1 : fibonachi(num - 1) + fibonachi(num - 2)
}



console.log(fibonachi(20));