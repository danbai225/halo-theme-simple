<#include "module/macro.ftl">
<@layout title="分类：${category.name} - ${blog_title!}">
        <div class="container">
        <div class="list list-condensed container">
            <div class="items items-hover">
                <h1>分类：${category.name}</h1>
                <#include "module/postlist.ftl">
            </div>
        </div>
    </div>
<!--分页-->
<#include "module/sppage.ftl">
</@layout>
