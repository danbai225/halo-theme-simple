<#include "module/macro.ftl">
<@layout title="${post.title!} - ${blog_title!}">
    <div class="container">
        <article class="article">
            <header>
                <h1 class="text-center">${post.title!}</h1>
                <dl class="dl-inline">
                    <dt>作者:</dt>
                    <dd>${user.nickname!}</dd>
                    <dt>创建时间：</dt>
                    <dd>${post.createTime}</dd>
                    <dt></dt>
                    <dd class="pull-right">
                        <#list post.categories as category>
                            <span class="label label-success label-outline"><a href="${category.fullPath!}"
                                                                               class="text-muted">${category.name!}</a></span>
                        </#list>
                        <#list post.tags as tag>
                            <span class="label label-badge label-success label-outline"><a href="${tag.fullPath!}"
                                                                                           class="text-muted">${tag.name!}</a></span>
                        </#list>
                        <span class="label label-danger"><i class="icon-eye-open"></i> ${post.visits!}</span>
                    </dd>
                </dl>
                <section class="abstract">
                    <p><strong>摘要：</strong>${post.summary}</p>
                </section>
            </header>
            ${post.formatContent!}
            <footer>
                <p class="pull-right text-muted">最后编辑于：${post.updateTime}</p>
                <p class="text-important">未经允许不得转载</p>
                <ul class="pager pager-justify">
                    <#if prevPost??>
                        <li class="previous"><a target="_blank" href="${prevPost.fullPath}"><i
                                        class="icon-arrow-left"></i>${prevPost.title}</a></li>
                    </#if>
                    <#if nextPost??>
                        <li class="next"><a target="_blank" href="${nextPost.fullPath}">${nextPost.title}<i
                                        class="icon-arrow-right"></i></a></li>
                    </#if>
                </ul>
            </footer>
        </article>
    </div>
    <link href="https://cdn.bootcdn.net/ajax/libs/highlight.js/11.2.0/styles/default.min.css" rel="stylesheet">
    <script src="https://cdn.bootcdn.net/ajax/libs/highlight.js/11.2.0/highlight.min.js"></script>
    <script>hljs.initHighlightingOnLoad();</script>
    <#include "module/comment.ftl">
    <@comment post=post type="post" />
</@layout>
