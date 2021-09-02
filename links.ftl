<#include "module/macro.ftl">
<@layout title="友情链接 - ${blog_title!}">
    <div class="container">
        <h1 class="text-center">友情链接</h1>
        <div id="accordion">
            <@linkTag method="list">
                <#if links?? && links?size gt 0>
                    <#list links as link>
                        <p>
                            <a href="#link${link.id}" data-toggle="collapse" data-parent="#accordion"
                               class="btn btn-link collapsed">${link.name}</a>
                        </p>
                        <div class="collapse" id="link${link.id}">
                            <div class="bg-success with-padding">
                                <#if link.description!="">
                                    <p>${link.description} <a href="${link.url}" target="_blank">去看看</a></p>
                                <#else>
                                    <p>这里介绍不了Ta <a href="${link.url}" target="_blank">去看看</a></p>
                                </#if>

                            </div>
                        </div>
                    </#list>
                </#if>
            </@linkTag>
        </div>
    </div>
</@layout>
