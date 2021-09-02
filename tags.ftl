<#include "module/macro.ftl">
<@layout title="标签列表 - ${blog_title!}">
    <div class="container">
    <h1 class="text-center">标签列表</h1>
        <ul>
        <@tagTag method="list">
            <#if tags?? && tags?size gt 0>
                <#list tags as tag>
                <span class="label label-badge label-success label-outline"><a href="${tag.fullPath!}" class="text-muted">${tag.name!}</a></span>
                </#list>
            </#if>
        </@tagTag>
    </ul>
    </div>
</@layout>
