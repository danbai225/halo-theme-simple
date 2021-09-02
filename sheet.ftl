<#include "module/macro.ftl">
<@layout title="${sheet.title!} - ${blog_title!}">
    <div class="container">
        <article class="article">
            <header>
                <h1 class="text-center">${post.title!}</h1>
                <dl class="dl-inline">
                    <dt>作者:</dt>
                    <dd>${user.nickname!}</dd>
                    <dt>创建时间：</dt>
                    <dd>${sheet.createTime}</dd>
                    <dt></dt>
                    <dd class="pull-right">
                        <span class="label label-danger"><i class="icon-eye-open"></i> ${sheet.visits!}</span>
                    </dd>
                </dl>
                <section class="abstract">
                    <p><strong>摘要：</strong>${sheet.summary}</p>
                </section>
            </header>
            ${sheet.formatContent!}
            <footer>
                <p class="pull-right text-muted">最后编辑于：${sheet.updateTime}</p>
                <p class="text-important">未经允许不得转载</p>
            </footer>
        </article>
    </div>
    <link href="https://cdn.bootcdn.net/ajax/libs/highlight.js/11.2.0/styles/default.min.css" rel="stylesheet">
    <script src="https://cdn.bootcdn.net/ajax/libs/highlight.js/11.2.0/highlight.min.js"></script>
    <script>hljs.initHighlightingOnLoad();</script>
    <#include "module/comment.ftl">
    <@comment post=sheet type="sheet" />
</@layout>
