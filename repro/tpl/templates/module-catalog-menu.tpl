{if $target == 'module-catalog.tpl' || $target == 'module-catalog_form.tpl'}
    <a href="{$SITE_URL}module-catalog.php"{if $target == 'module-catalog.tpl'} class="active"{/if}>Каталог</a>
    <a href="{$SITE_URL}module-catalog_form.php"{if $target == 'module-catalog_form.tpl'} class="active"{/if}>Добавить каталог</a>
{/if}       

<!-- cats -->

{if $target == 'module-catalog-cats.tpl'}
    <a href="{$SITE_URL}module-catalog.php"{if $target == 'module-catalog.tpl'} class="active"{/if}>Каталог</a>
    <a href="{$SITE_URL}module-catalog-cats.php?catalog_id={$array.moduleCatalog.catalog_id}"{if $target == 'module-catalog-cats.tpl'} class="active"{/if}>{$array.moduleCatalog.catalog_title}</a>
    <a href="{$SITE_URL}module-catalog-cats_form.php?catalog_id={$array.moduleCatalog.catalog_id}"{if $target == 'module-catalog-cats_form.tpl'} class="active"{/if}>Добавить категорию</a>
{/if}

{if $target == 'module-catalog-cats_form.tpl' || $target == 'module-catalog-cats-propertie_form.tpl' || $target == 'module-catalog-cats-properties.tpl' || $target == 'module-catalog-cats-propertie-array_form.tpl'}
    <a href="{$SITE_URL}module-catalog.php"{if $target == 'module-catalog.tpl'} class="active"{/if}>Каталог</a>
    {if $smarty.get.category_parent_id}
        <a href="{$SITE_URL}module-catalog-cats.php?catalog_id={$array.moduleCatalog.catalog_id}">{$array.moduleCatalog.catalog_title}</a>
        <a href="{$SITE_URL}module-catalog-objects.php?catalog_id={$array.moduleCatalog.catalog_id}&category_id={$array.moduleCatalogCategoryParent.category_id}">{$array.moduleCatalogCategoryParent.category_title}</a>
        <a href="{$SITE_URL}module-catalog-cats_form.php?catalog_id={$array.moduleCatalog.catalog_id}&category_parent_id={$array.moduleCatalogCategoryParent.category_id}"{if $target == 'module-catalog-cats_form.tpl'} class="active"{/if}>Добавить подкатегорию</a>
    {elseif $smarty.get.category_id}        
        <a href="{$SITE_URL}module-catalog-cats.php?catalog_id={$array.moduleCatalog.catalog_id}">{$array.moduleCatalog.catalog_title}</a>
        <a href="{$SITE_URL}module-catalog-objects.php?catalog_id={$array.moduleCatalog.catalog_id}&category_id={$array.moduleCatalogCategory.category_id}">{$array.moduleCatalogCategory.category_title}</a>
        <a href="{$SITE_URL}module-catalog-cats_form.php?catalog_id={$array.moduleCatalog.catalog_id}&category_id={$array.moduleCatalogCategory.category_id}"{if $target == 'module-catalog-cats_form.tpl'} class="active"{/if}>Настройки</a>
        <a href="{$SITE_URL}module-catalog-cats-properties.php?catalog_id={$array.moduleCatalog.catalog_id}&category_id={$array.moduleCatalogCategory.category_id}"{if $target == 'module-catalog-cats-properties.tpl'} class="active"{/if}>Характеристики</a>
        <a href="{$SITE_URL}module-catalog-cats-propertie_form.php?catalog_id={$array.moduleCatalog.catalog_id}&category_id={$array.moduleCatalogCategory.category_id}&propertie_id={$array.moduleCatalogCategoryPropertie.propertie_id}"{if $target == 'module-catalog-cats-propertie_form.tpl'} class="active"{/if}>{if $smarty.get.propertie_id}Редактировать{else}Добавить{/if} характеристику</a>
        
        {if $array.moduleCatalogCategoryPropertie.type_id == 3}
            <a href="{$SITE_URL}module-catalog-cats-propertie-array_form.php?catalog_id={$array.moduleCatalog.catalog_id}&category_id={$array.moduleCatalogCategory.category_id}&propertie_id={$array.moduleCatalogCategoryPropertie.propertie_id}"{if $target == 'module-catalog-cats-propertie-array_form.tpl'} class="active"{/if}>{if $smarty.get.array_id}Редактировать{else}Добавить{/if} поле</a>            
        {/if}       
    {else}
        <a href="{$SITE_URL}module-catalog-cats.php?catalog_id={$array.moduleCatalog.catalog_id}">{$array.moduleCatalog.catalog_title}</a>
        <a href="{$SITE_URL}module-catalog-cats_form.php?catalog_id={$array.moduleCatalog.catalog_id}"{if $target == 'module-catalog-cats_form.tpl'} class="active"{/if}>Добавить категорию</a>
    {/if}
{/if}

<!-- objects -->
{if $target == 'module-catalog-objects.tpl'}
    <a href="{$SITE_URL}module-catalog.php"{if $target == 'module-catalog.tpl'} class="active"{/if}>Каталог</a>
    <a href="{$SITE_URL}module-catalog-cats.php?catalog_id={$array.moduleCatalog.catalog_id}">{$array.moduleCatalog.catalog_title}</a>
    <a href="{$SITE_URL}module-catalog-objects.php?catalog_id={$array.moduleCatalog.catalog_id}&category_id={$array.moduleCatalogCategory.category_id}"{if $target == 'module-catalog-objects.tpl'} class="active"{/if}>{$array.moduleCatalogCategory.category_title}</a>    
    <a href="{$SITE_URL}module-catalog-objects_form.php?catalog_id={$array.moduleCatalog.catalog_id}&category_id={$array.moduleCatalogCategory.category_id}"{if $target == 'module-catalog-objects_form.tpl'} class="active"{/if}>Добавить объект</a>
{/if}

{if $target == 'module-catalog-objects_form.tpl' || $target == 'module-catalog-objects-propertie_form.tpl' || $target == 'module-catalog-objects-properties.tpl' || $target == 'module-catalog-objects-propertie-array_form.tpl'}
    <a href="{$SITE_URL}module-catalog.php"{if $target == 'module-catalog.tpl'} class="active"{/if}>Каталог</a>
        <a href="{$SITE_URL}module-catalog-cats.php?catalog_id={$array.moduleCatalog.catalog_id}">{$array.moduleCatalog.catalog_title}</a>
        <a href="{$SITE_URL}module-catalog-objects.php?catalog_id={$array.moduleCatalog.catalog_id}&category_id={$array.moduleCatalogCategory.category_id}"{if $target == 'module-catalog-objects.tpl'} class="active"{/if}>{$array.moduleCatalogCategory.category_title}</a>
    {if $smarty.get.object_id}
        <a href="{$SITE_URL}module-catalog-objects_form.php?catalog_id={$array.moduleCatalog.catalog_id}&category_id={$array.moduleCatalogCategory.category_id}&object_id={$array.moduleCatalogObject.object_id}"{if $target == 'module-catalog-objects_form.tpl'} class="active"{/if}>Настройки</a>
        <a href="{$SITE_URL}module-catalog-objects-properties.php?catalog_id={$array.moduleCatalog.catalog_id}&category_id={$array.moduleCatalogCategory.category_id}&object_id={$array.moduleCatalogObject.object_id}"{if $target == 'module-catalog-objects-properties.tpl'} class="active"{/if}>Характеристики</a>
        <a href="{$SITE_URL}module-catalog-objects-propertie_form.php?catalog_id={$array.moduleCatalog.catalog_id}&category_id={$array.moduleCatalogCategory.category_id}&object_id={$array.moduleCatalogObject.object_id}&propertie_id={$array.moduleCatalogObjectPropertie.propertie_id}"{if $target == 'module-catalog-objects-propertie_form.tpl'} class="active"{/if}>{if $smarty.get.propertie_id}Редактировать{else}Добавить{/if} характеристику</a>
        
        {if $array.moduleCatalogObjectPropertie.type_id == 3}
            <a href="{$SITE_URL}module-catalog-objects-propertie-array_form.php?catalog_id={$array.moduleCatalog.catalog_id}&category_id={$array.moduleCatalogCategory.category_id}&object_id={$array.moduleCatalogObject.object_id}&propertie_id={$array.moduleCatalogObjectPropertie.propertie_id}"{if $target == 'module-catalog-objects-propertie-array_form.tpl'} class="active"{/if}>{if $smarty.get.array_id}Редактировать{else}Добавить{/if} поле</a>            
        {/if}       
        
    {else}
        <a href="{$SITE_URL}module-catalog-objects_form.php?catalog_id={$array.moduleCatalog.catalog_id}&category_id={$array.moduleCatalogCategory.category_id}"{if $target == 'module-catalog-objects_form.tpl'} class="active"{/if}>Добавить объект</a>
    {/if}
{/if}
