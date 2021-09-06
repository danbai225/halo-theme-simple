
<#list posts.content as post>
    <div class="item">
        <div class="item-heading">
            <div class="pull-right">
                <span class="text-muted">${post.createTime!}</span> &nbsp;<i
                        class="icon-eye-open"></i> ${post.visits!}</div>
            <h4><a href="${post.fullPath!}">${post.title!}</a></h4>
        </div>
        <div class="item-content">
            <div class="media pull-right">
              <#if post.thumbnail!="">
                <img src="${post.thumbnail!}"/>
               </#if>
          </div>           
            <div class="text">${post.summary!}</div>
            <div class="pull-bottom">
                <#list post.categories as category>
                    <span class="label label-success label-outline"><a href="${category.fullPath!}" class="text-muted">${category.name!}</a></span>
                </#list>
                <#list post.tags as tag>
                    <span class="label label-badge label-success label-outline"><a href="${tag.fullPath!}" class="text-muted">${tag.name!}</a></span>
                </#list>
            </div>
        </div>
</#list>
