{extends file="general_page_template.tpl"}
{block name=title}
    {$title|escape}
{/block}
{block name=calendar}
    {$calendar}
{/block}
{block name=body}
    {foreach $gallery as $picture}
        {$picture}
    {/foreach}
{/block}