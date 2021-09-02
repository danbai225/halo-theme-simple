<#include "module/macro.ftl">
<@layout title="分类列表 - ${blog_title!}">
    <div class="container">
    <h1 class="text-center">分类列表</h1>
        <ul>
        <@categoryTag method="list">
            <#if categories?? && categories?size gt 0>
                <#list categories as category>
                <span class="label label-success label-outline"><a href="${category.fullPath!}" class="text-muted">${category.name!}</a></span>
                </#list>
            </#if>
        </@categoryTag>
    </ul>
    </div>
</@layout>
