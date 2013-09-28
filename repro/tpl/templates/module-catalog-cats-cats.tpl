<!-- cats -->
{if isset($array.categorylist[$source])}
    {foreach from=$array.categorylist[$source] key item=category name=categorylist}
    <tr>
        <td class="level{$level}"><a href="{$SITE_URL}module-catalog-objects.php?catalog_id={$category.catalog_id}&category_id={$category.category_id}">{$category.category_title}</a></td>
        <td>
            <a href="{$SITE_URL}module-catalog-cats_form.php?catalog_id={$category.catalog_id}&category_parent_id={$category.category_id}">Подкатегория</a> /
            <a href="{$SITE_URL}module-catalog-cats_form.php?catalog_id={$category.catalog_id}&category_id={$category.category_id}">Редактировать</a> /
            <a href="javascript:;" onclick="deleteMe('{$SITE_URL}module-catalog-cats.php?catalog_id={$category.catalog_id}&_category_id={$category.category_id}','Вы уверены, что хотите удалить категорию?');">Удалить</a>
        </td>
    </tr>
    <!-- subcats -->
    {if isset($array.categorylist[$category.category_id])}
        {include file='module-catalog-cats-cats.tpl' source=$category.category_id level=($level+1)} 
    {/if}
    {/foreach}
{/if}