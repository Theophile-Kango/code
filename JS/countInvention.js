const countInvention = (array) => {
    //buble sort algorithm
    let count = 0;
    for(let i = 0; i < array.length; i++){
        for(let j = i+1; j<array.length; j++){
            // if(array[i] > array[j]){
            //     [array[i], array[j]] = [array[j], array[i]];
            //     count += 1;
            // }
            console.log(`${i} ${j}`)
        }
    }
    //return count;
}

countInvention([10,3,5,1,4])