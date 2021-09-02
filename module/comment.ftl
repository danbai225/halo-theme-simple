<#macro comment post,type>
    <#if !post.disallowComment!false>
        <halo-comment id="${post.id?c}" type="${type}"/>
    </#if>
</#macro>