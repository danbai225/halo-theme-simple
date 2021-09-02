<#include "module/macro.ftl">
<@layout title="归档 - ${blog_title!}">
<div class="container">
    <h1>归档</h1>
    <ul id="posts">
    </ul>
</div>
<script>
$(function(){
    $.get("api/content/archives/months",function(data,status){
        if (data.status==200){
            var posts=data.data;
            
            var dpost=$("#posts");
            for (var i=0;i<posts.length;i++)
            { 
                var pss=posts[i].posts;
                dpost.append("<h2>"+posts[i].year+"年"+posts[i].month+"月</h2>")
                for (var j=0;j<pss.length;j++)
                { 
                    dpost.append('<li><a href="'+pss[j].fullPath+'">'+pss[j].title+'</a></li>')
                }
            }
        }
    });
});
</script>
</@layout>
