const img = document.getElementById("img_inp");

var image = "";

img.addEventListener("change",function(){

    const reader = new FileReader();
    reader.addEventListener("load" , () => {

        image = reader.result;

        var box = document.querySelector("#box");

        box.setAttribute("src",""+image+"");

    });

    reader.readAsDataURL(this.files[0]);

});

