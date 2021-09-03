<#include "module/macro.ftl">
<@layout title="搜索 - ${keyword!}">
<div class="container">
    <h1>搜索-${keyword!}</h1>
    <div class="list list-condensed container">
        <div class="items items-hover">
            <#include "module/postlist.ftl">
        </div>
    </div>
</div>
<!--分页-->
<#include "module/sppage.ftl">
</@layout>