<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset=UTF-8>
        <title>自带半透明阴影的模态框</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
		
    </head>

    <body>
        <button class="btn btn-primary" type="button" id="test">点击我显示模态框</button>

        <div class="modal" id="my-modal-alert">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header" style="border-bottom:0;
    background: linear-gradient(bottom , rgba(0, 0, 0, 0.61) , rgb(25, 67, 112) 10% , rgb(16, 43, 71) 100%);
    background: -o-linear-gradient(bottom , rgba(0, 0, 0, 0.61) , rgb(25, 67, 112) 10% , rgb(16, 43, 71) 100%);
    background: -ms-linear-gradient(bottom , rgba(0, 0, 0, 0.61) , rgb(25, 67, 112) 10% , rgb(16, 43, 71) 100%);
    background: -moz-linear-gradient(bottom , rgba(0, 0, 0, 0.61) , rgb(25, 67, 112) 10% , rgb(16, 43, 71) 100%);
    background: -webkit-linear-gradient(bottom , rgba(0, 0, 0, 0.61) , rgb(25, 67, 112) 10% , rgb(16, 43, 71) 100%);">
                        <button type="button" class="close" data-dismiss="modal">
                                <span aria-hidden="true" style="color:#fff;">&times</span><span class="sr-only" >Close</span>
                            </button>
                        <h4 class="modal-title" id="modal-title" style="color:#fff">人口分布1</h4><span id="num"></span>
                    </div>
                    <!--/*modal-header*/-->
                    <div class="modal-body" style="background: #0f2b48;
    /* border: 1px solid #18426f; */
    box-shadow: 0px 6px 20px #000;width:100%;height:100%;">
                        <iframe src="echart0.jsp"  frameborder="0" width="100%" height="100%" scrolling="no" ></iframe>
                    </div>
                </div>
            </div>
        </div>
        
        <script src="js/jquery-3.2.1.js"></script>
    	<script src="js/bootstrap.min.js"></script>
        <script>
            $(function() {
                $("#test").click(function(){
                    $("#my-modal-alert").modal("toggle");
                });
            });
        </script>
    </body>

</html>