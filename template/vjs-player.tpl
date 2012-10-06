{html_head}
{combine_script id='vjs' load='header' path="`$VIDEOJS_PATH`js/video.js"}
{combine_css id="vjs_default" path="`$VIDEOJS_PATH`skin/video-js.css"}
{combine_css id="vjs_default" path="`$VIDEOJS_PATH`skin/tube.css"}
{/html_head}

<div style="margin: 0 auto; width:{$WIDTH}px; min-width:480px">

{literal}
<video id="my_video_1" class="video-js {/literal}{$VIDEOJS_SKIN}{literal}" {/literal}{$OPTIONS}{literal} width={/literal}"{$WIDTH}"{literal} height={/literal}"{$HEIGHT}"{literal} poster={/literal}"{$VIDEOJS_POSTER_URL}"{literal} data-setup='{}'>
<!--  <source src={/literal}"{$VIDEOJS_MEDIA_URL}"{literal} type='video/{/literal}{$TYPE}{literal}'>{/literal} -->
{foreach from=$VIDEOJS_SOURCES item=i}
{literal}  <source src={/literal}"{$i.url}"{literal} type='video/{/literal}{$i.type}{literal}'>{/literal}
{/foreach}{literal}
  <p>Video Playback Not Supported<br/>Your browser does not support the video tag.</p>
</video>
{/literal}
</div>
