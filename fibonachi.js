function fibonachi(num){
    current = 0, index = 0
    arr = [];
    
    while (index < num){
        index += 1
        arr.push(index)
    } 
    let arr2 = [];
    arr.map((item) => { 
        // Increment each item by 1
         arr2.push(arr[item+ arr[i]]); 
    });
     return arr2;   
}



console.log(fibonachi(20));