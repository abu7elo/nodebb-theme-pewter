<ol class="breadcrumb">
	<li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
		<a href="{relative_path}/" itemprop="url"><span itemprop="title">[[global:home]]</span></a>
	</li>
	<li class="active" itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
		<span itemprop="title">{category_name}</span>
	</li>
</ol>

<hr/>

<div class="alert alert-warning hide {no_topics_message}" id="category-no-topics">
	[[category:no_topics]]
</div>

<div class="category row">
	<div class="col-xs-12">
		<div class="post-bar {show_topic_button}" data-index="{posts.index}">
			<div class="inline-block">
				<small class="topic-stats">
					<a target="_blank" href="../{category_id}.rss"><i class="fa fa-rss-square"></i></a>
					<!-- IF !disableSocialButtons -->
					<a href="#" id="facebook-share"><i class="fa fa-facebook-square"></i></a>
					<a href="#" id="twitter-intent"><i class="fa fa-twitter-square"></i></a>
					<a href="#" id="google-share"><i class="fa fa-google-plus-square"></i></a>
					<!-- ENDIF !disableSocialButtons -->
				</small>
				<div class="thread_active_users active-users inline-block"></div>
			</div>
			<div class="topic-main-buttons pull-right inline-block">
				<button id="new_post" class="btn btn-primary">[[category:new_topic_button]]</button>
			</div>
			<div style="clear:both;"></div>
		</div>

		<ul id="topics-container" itemscope itemtype="http://www.schema.org/ItemList" data-nextstart="{nextStart}">
			<meta itemprop="itemListOrder" content="descending">
			<!-- BEGIN topics -->
			<li class="category-item {topics.deleted-class}" itemprop="itemListElement">
				<meta itemprop="name" content="{topics.title}">
				<div class="category-item">
					<div class="category-body">
						<div class="row">
							<div class="col-md-8 col-sm-9">
								<div class="category-profile-pic">
									<a href="../../user/{topics.userslug}">
										<img src="{topics.picture}" alt="{topics.teaser_username}" class="profile-image user-img" title="{topics.username}">
									</a>
								</div>
								<div class="category-text">
									<p><strong><i class="fa {topics.pin-icon}"></i> <i class="fa {topics.lock-icon}"></i></strong>
										<a href="../../topic/{topics.slug}" itemprop="url">{topics.title}</a><br />
										<small>[[category:posted]] <span class="timeago" title="{topics.relativeTime}"></span> by {topics.username}</small>
									</p>
								</div>
							</div>
							<div class="col-xs-1 category-stat hidden-xs">
								<strong class="human-readable-number" title="{topics.postcount}">{topics.postcount}</strong><br />
								<small>[[category:posts]]</small>
							</div>
							<div class="col-xs-1 category-stat hidden-xs">
								<strong class="human-readable-number" title="{topics.viewcount}">{topics.viewcount}</strong><br />
								<small>[[category:views]]</small>
							</div>
							<div class="col-xs-2 category-stat replies hidden-sm hidden-xs">
								<!-- IF topics.unreplied -->
								<p class="no-replies">[[category:no_replies]]</p>
								<!-- ELSE -->
								<a href="../../user/{topics.teaser_userslug}">
									<img class="profile-image small user-img" src="{topics.teaser_userpicture}" title="{topics.teaser_username}"/>
								</a>
								<a href="../../topic/{topics.slug}#{topics.teaser_pid}">
									[[category:replied]]
									<span class="timeago" title="{topics.teaser_timestamp}"></span>
								</a>
								<!-- ENDIF topics.unreplied -->
							</div>
						</div>
					</div>
				</div>
			</li>
			<!-- END topics -->
		</ul>
		<!-- IF usePagination -->
		<div class="text-center">
			<ul class="pagination">
				<li class="previous pull-left"><a href="#"><i class="fa fa-chevron-left"></i> [[global:previouspage]]</a></li>
				<li class="next pull-right"><a href="#">[[global:nextpage]] <i class="fa fa-chevron-right"></i></a></li>
			</ul>
		</div>
		<!-- ENDIF usePagination -->
	</div>
</div>

<input type="hidden" template-variable="category_id" value="{category_id}" />
<input type="hidden" template-variable="category_name" value="{category_name}" />
<input type="hidden" template-variable="currentPage" value="{currentPage}" />
<input type="hidden" template-variable="pageCount" value="{pageCount}" />