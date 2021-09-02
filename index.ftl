<#include "module/macro.ftl">
<@layout title="${blog_title!}">
<div class="container">
    <h1 class="text-center">${blog_title!}</h1>
    <p class="text-center">${user.description!}</p>
</div>
<div class="container">
    <div class="list list-condensed container">
        <div class="items items-hover">
        <h1>文章列表</h1>
        <#include "module/postlist.ftl">
        </div>
    </div>
</div>
<!--分页-->
<#include "module/sppage.ftl">
</@layout>
