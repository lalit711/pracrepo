const a = document.getElementsByClassName("product-btn")
    for (let btn of a ){
        btn.addEventListener('click',()=>{
            const name = btn.dataset.productName;
            alert(`hey there,${name}`)
        })
    }
