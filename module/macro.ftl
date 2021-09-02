<#macro layout title>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="keywords" content="${meta_keywords!}"/>
    <meta name="description" content="${meta_description!}" />
    <!-- ZUI 标准版压缩后的 CSS 文件 -->
    <link rel="stylesheet" href="//cdn.bootcss.com/zui/1.9.2/css/zui.min.css">
    <!-- 本站CSS -->
    <link rel="stylesheet" type="text/css" href="${theme_base!}/source/css/style.css">
    <!-- ZUI Javascript 依赖 jQuery -->
    <script src="//cdn.bootcss.com/zui/1.9.2/lib/jquery/jquery.js"></script>
    <!-- ZUI 标准版压缩后的 JavaScript 文件 -->
    <script src="//cdn.bootcss.com/zui/1.9.2/js/zui.min.js"></script>
    <!-- 本站JS -->
    <script src="${theme_base!}/source/js/index.js"></script>
    <#--
        公共 head 代码，详情请参考：https://docs.halo.run/zh/developer-guide/theme/public-template-tag
        包含：Favicon，自定义 head 等
    -->
    <@global.head />
    <title>${title}</title>
</head>
<body>
<#include "menu.ftl">

<#nested >

<#--
    公共底部代码，详情请参考：https://docs.halo.run/zh/developer-guide/theme/public-template-tag
    包含：统计代码，底部信息
-->
<@global.footer />
</body>
<footer>
<hr>
<div class="container text-center">
   Copyright &copy; 2021<a href="https://p00q.cn"> ${blog_title!}</a><br/>
   <a href="http://beian.miit.gov.cn" target="_blank">${settings.beian!}</a>
   <!-- 请尊重作者，请务必保留版权 -->
   <p>Powered by <a target="_blank" href="http://halo.run" data-pjax-state="">Halo</a> •
                Theme by <a target="_blank" href="https://github.com/danbai225/halo-theme-simple" data-pjax-state="">Simple</a>
   <p>本站运行：<span id="span_dt_dt"></span></p>
</div>
</footer>
</html>
</#macro>

