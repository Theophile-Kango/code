const bubleSort = array => {
    for(let i=0; i<array.length;i++){
        for(let j=i+1; j<array.length;j++){
            if(array[j] < array[i]){
                [array[i],array[j]] = [array[j],array[i]];
            }
        }
    }
    return array;
}

console.log(bubleSort([50,1,9,30,5,2,20]));