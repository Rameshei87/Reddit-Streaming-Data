CREATE EXTERNAL TABLE `reddit`.`technology`(
  `approved_at_utc` timestamp COMMENT '', 
  `subreddit` string COMMENT '', 
  `selftext` string COMMENT '',
  `author_fullname` string COMMENT '',
  `saved` boolean COMMENT '',
  `mod_reason_title` string COMMENT '',
  `gilded` int COMMENT '',
  `clicked` boolean COMMENT '',
  `title` string COMMENT '',
  `subreddit_name_prefixed` string COMMENT '',
  `hidden` boolean COMMENT '',
  `pwls` int COMMENT '',
  `link_flair_css_class` string COMMENT '',
  `downs` int COMMENT '',
  `thumbnail_height` int COMMENT '',
  `top_awarded_type` string COMMENT '',
  `hide_score` boolean COMMENT '',
  `name` string COMMENT '',
  `quarantine` boolean COMMENT '',
  `link_flair_text_color` string COMMENT '',
  `upvote_ratio` float COMMENT '',
  `author_flair_background_color` string COMMENT '',
  `ups` int COMMENT '',
  `total_awards_received` int COMMENT '',
  `thumbnail_width` int COMMENT '',
  `author_flair_template_id` string COMMENT '',
  `is_original_content` boolean COMMENT '',
  `secure_media` string COMMENT '',
  `is_reddit_media_domain` boolean COMMENT '',
  `is_meta` boolean COMMENT '',
  `category` string COMMENT '',
  `link_flair_text` string COMMENT '',
  `can_mod_post` boolean COMMENT '',
  `score` int COMMENT '',
  `approved_by` string COMMENT '',
  `is_created_from_ads_ui` boolean COMMENT '',
  `author_premium` boolean COMMENT '',
  `thumbnail` string COMMENT '',
  `edited` boolean COMMENT '',
  `author_flair_css_class` string COMMENT '',
  `post_hint` string COMMENT '',
  `content_categories` string COMMENT '',
  `is_self` boolean COMMENT '',
  `subreddit_type` string COMMENT '',
  `created` timestamp COMMENT '',
  `link_flair_type` string COMMENT '',
  `wls` int COMMENT '',
  `removed_by_category` string COMMENT '',
  `banned_by` string COMMENT '',
  `author_flair_type` string COMMENT '',
  `domain` string COMMENT '',
  `allow_live_comments` boolean COMMENT '',
  `selftext_html` string COMMENT '',
  `likes` int COMMENT '',
  `suggested_sort` string COMMENT '',
  `banned_at_utc` timestamp COMMENT '',
  `url_overridden_by_dest` string COMMENT '',
  `view_count` int COMMENT '',
  `archived` boolean COMMENT '',
  `no_follow` boolean COMMENT '',
  `is_crosspostable` boolean COMMENT '',
  `pinned` boolean COMMENT '',
  `over_18` boolean COMMENT '',
  `media_only` boolean COMMENT '',
  `link_flair_template_id` string COMMENT '',
  `can_gild` boolean COMMENT '',
  `spoiler` boolean COMMENT '',
  `locked` boolean COMMENT '',
  `author_flair_text` string COMMENT '',
  `visited` boolean COMMENT '',
  `removed_by` string COMMENT '',
  `mod_note` string COMMENT '',
  `distinguished` string COMMENT '',
  `subreddit_id` string COMMENT '',
  `author_is_blocked` boolean COMMENT '',
  `mod_reason_by` string COMMENT '',
  `num_reports` int COMMENT '',
  `removal_reason` string COMMENT '',
  `link_flair_background_color` string COMMENT '',
  `id` string COMMENT '',
  `is_robot_indexable` boolean COMMENT '',
  `report_reasons` string COMMENT '',
  `author` string COMMENT '',
  `discussion_type` string COMMENT '',
  `num_comments` int COMMENT '',
  `send_replies` boolean COMMENT '',
  `whitelist_status` string COMMENT '',
  `contest_mode` boolean COMMENT '',
  `author_patreon_flair` boolean COMMENT '',
  `author_flair_text_color` string COMMENT '',
  `permalink` string COMMENT '',
  `parent_whitelist_status` string COMMENT '',
  `stickied` boolean COMMENT '',
  `url` string COMMENT '',
  `subreddit_subscribers` int COMMENT '',
  `created_utc` timestamp COMMENT '',
  `num_crossposts` int COMMENT '',
  `media` string COMMENT '',
  `is_video` boolean COMMENT '',
  `date` date COMMENT '')
PARTITIONED BY (
  year int, 
  month int, 
  day int)
ROW FORMAT SERDE 'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.SymlinkTextInputFormat'
OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION 's3://reddit-streaming-stevenhurwitt/technology_clean/_symlink_format_manifest/'