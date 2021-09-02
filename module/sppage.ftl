<div class="container">
    <#if posts.totalPages gt 1>
        <ul class="pager">
            <@paginationTag method="index" page="${posts.number}" total="${posts.totalPages}" display="3">
                <#if pagination.hasPrev>
                    <li class="previous">
                        <a href="${pagination.prevPageFullPath!}">
                            上一页
                        </a>
                    </li>
                </#if>
                <#list pagination.rainbowPages as number>
                    <li class="${number.isCurrent?string('active','')}">
                        <#if number.isCurrent>
                            <span class="current active">第 ${number.page!} 页</span>
                        <#else>
                            <a href="${number.fullPath!}">第 ${number.page!} 页</a>
                        </#if>
                    </li>
                </#list>
                <#if pagination.hasNext>
                    <li class="next">
                        <a href="${pagination.nextPageFullPath!}">
                            下一页
                        </a>
                    </li>
                </#if>
            </@paginationTag>
        </ul>
    </#if>
</div>