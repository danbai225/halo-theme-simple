<@menuTag method="list">
    <#--
        ?sort_by('priority')：根据菜单的排序编号排序
    -->
<nav class="navbar navbar-default" role="navigation">
  <div class="container-fluid">
    <!-- 导航头部 -->
    <div class="navbar-header">
      ${user.nickname!}
    </div>
    <!-- 导航项目 -->
    <div class="collapse navbar-collapse navbar-collapse-example">
      <!-- 右侧的导航项目 -->
      
      <ul class="nav navbar-nav navbar-right">
        <li>
         <input style="margin-top: 3px;" id="searchBox" type="search" class="form-control search-input" placeholder="搜索">
        </li>
        <li><a href="/">首页</a></li>
        <li><a href="/archives">归档</a></li>
        <li><a href="/links">友情链接</a></li>
        <li class="dropdown">
          <a href="your/nice/url" class="dropdown-toggle" data-toggle="dropdown">探索 <b class="caret"></b></a>
          <ul class="dropdown-menu" role="menu">
            <#list menus?sort_by('priority') as menu>
            <#if menu.name!="首页"&menu.name!="归档"&menu.name!="友情链接">
                <li><a href="${menu.url}" target="${menu.target!}">${menu.name} </a></li>
            </#if>
            </#list>
          </ul>
        </li>
      </ul>
    </div>
    <!-- END .navbar-collapse -->
  </div>
</nav>
</@menuTag>