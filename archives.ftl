<#include "module/macro.ftl">
<@layout title="归档 - ${blog_title!}">
<div class="container">
    <h1>归档</h1>
    <ul id="posts">
      <@postTag method="archiveMonth">
        <#list archives as archive>
      <h2>${archive.year?c}年${archive.month?c}月</h2>
      <ul>
          <#list archive.posts?sort_by("createTime")?reverse as post>
            <li>
              <a href="${post.fullPath!}">${post.title!}</a>
            </li>
          </#list>
      	</ul>
        </#list>
	</@postTag>
    </ul>
</div>
</@layout>
