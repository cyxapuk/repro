{if $array.propertielist}

    {foreach from=$array.propertielist key=field_key item=field name=propertielist}
    
        {if $field.type_id == 1}
        <!-- text -->
            	
        <label class="label">{$field.propertie_title}</label><input type="text" name="category_field[{$field.propertie_id}]" value="{$field.propertie_value}" />
    	<div class="clearfix"></div>
        
        {/if}
        
        {if $field.type_id == 2}
         <!-- text -->
         
        <label class="label">{$field.propertie_title}</label><textarea name="category_field[{$field.propertie_id}]">{$field.propertie_value}</textarea>
    	<div class="clearfix"></div>

        {/if}  
        
        {if $field.type_id == 3}
        <!-- select -->
            	
    	<label class="label">{$field.propertie_title}</label>
    	<div class="select">   
        <select name="category_field[{$field.propertie_id}]"> 
        <option value="">Выберите значение</option>
        {if $array.arrayslist[$field.propertie_id]}
            {foreach from=$array.arrayslist[$field.propertie_id] key=array_index item=array_value name=languagelist}
            <option value="{$array_value}"{if ($array_value == $field.propertie_value)} selected="selected"{/if}>{$array_value}</option>
            {/foreach}
        {/if}           
        </select>   
        </div>
        <div class="clearfix"></div>
        
        {/if}
        
        {if $field.type_id == 4}
        <!-- wysiwyg -->
    	
        <label class="label">{$field.propertie_title}</label><div class="ckeditor"><textarea name="category_field[{$field.propertie_id}]" id="category_field_{$field.propertie_id}">{$field.propertie_value}</textarea></div>
    	<div class="clearfix"></div>
        
        <script>
        $(document).ready(function(){
    		CKEDITOR.replace( 'category_field_{$field.propertie_id}', {
    			toolbar: [
    				[ 'Bold', 'Italic', '-', 'NumberedList', 'BulletedList', '-', 'Link', 'Unlink' ],
    				[ 'FontSize', 'TextColor', 'BGColor' ]
    			]
    		}); 
        })
        </script>        
        
        {/if}
        
        {if $field.type_id == 5}
        <!-- image -->
    	
        <label class="label">{$field.propertie_title}</label><input type="file" name="category_field[{$field.propertie_id}]" />
        
        {if $field.propertie_value}
        <div class="additional">
        <a href="{$array.project_url|replace:'admin.':''}/catalog_files/category/image/{$field.propertie_value}?r={math equation='rand(10,100)'}" target="_blank">{$array.project_url|replace:'admin.':''}/catalog_files/category/image/{$field.propertie_value}</a> | <a href="javascript:;" onclick="deleteMe('{$SITE_URL}module-catalog-cats_form.php?catalog_id={$array.catalog_id}&category_id={$array.category_id}&_propertie_id={$field.propertie_id}','Вы уверены, что хотите удалить картинку?');">Удалить</a>
        </div>        
        {/if}
        
    	<div class="clearfix"></div>
        
        {/if}    
        
        {if $field.type_id == 6}
        <!-- checkbox -->
    	
        <label class="label">{$field.propertie_title}</label><input type="checkbox" name="category_field[{$field.propertie_id}]"{if $field.propertie_value == 1} checked="checked"{/if} value="1" />
    	<div class="clearfix"></div>
        
        {/if}
        
        {if $field.type_id == 7}
        <!-- document -->
    	
        <label class="label">{$field.propertie_title}</label><input type="file" name="category_field[{$field.propertie_id}]" />

        {if $field.propertie_value}
        <div class="additional">
        <a href="{$array.project_url|replace:'admin.':''}/catalog_files/category/document/{$field.propertie_value}?dr={math equation='rand(10,100)'}" target="_blank">{$array.project_url|replace:'admin.':''}/catalog_files/category/document/{$field.propertie_value}</a> | <a href="javascript:;" onclick="deleteMe('{$SITE_URL}module-catalog-cats_form.php?catalog_id={$array.catalog_id}&category_id={$array.category_id}&_propertie_id={$field.propertie_id}','Вы уверены, что хотите удалить документ?');">Удалить</a>
        </div>        
        {/if}

    	<div class="clearfix"></div>
        
        {/if}
        
        {if $field.type_id == 11}
        <!-- data -->
        
        <script>
        $(function() {
        	$( "#category_field_{$field.propertie_id}" ).datepicker();
            $( "#category_field_{$field.propertie_id}" ).datepicker( "option", "dateFormat", "yy-mm-dd" );    
            $( "#category_field_{$field.propertie_id}" ).attr('value','{$field.propertie_value}');
        });
        </script>        
    	
        <label class="label">{$field.propertie_title}</label><input type="text" name="category_field[{$field.propertie_id}]" value="" id="category_field_{$field.propertie_id}" />
    	<div class="clearfix"></div>
        
        {/if}                                    
        
    {/foreach}

{/if}