   
    function appendtofile(data){
            const fs = require('fs')
            
            //append data to text.txt
            fs.appendFile('./test.txt', data, (err) => {
             
                // In case of a error throw err.
                if (err) throw err;
            })
        }
