var user = {"name":$("#Login").val(),"pwd":$("#pwd").val()};
    $("#Login").click(function(){
        $.ajax({
            url : "../php/Login.php",
            type : "post",
            async : true,
            data : user,
            success : function(data,textStatus){
                console.log(data);
                console.log(textStatus);
                $("#olduser-login").modal("hide");
                $("#alertbox").modal("show");
                $("#alertbox1").html("登录成功!");
                $(function () {
                  setTimeout(function () {
                    $("#alertbox").modal("hide");
                    }, 1000);
                  }); 
            },
            error : function(XMLHttpRequest,textStatus,errorThrown){
                console.log(textStatus);
                console.log(errorThrown);
                $("olduser-login").modal("hide").modal("show");
            }
        });
    })