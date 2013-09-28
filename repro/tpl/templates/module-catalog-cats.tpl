{include file="header_admin.tpl" title="Список каталогов"}

<div class="layout">
    
    <h3>Список категорий</h3>
    
    <br />
    <br />
    <div class="main">
    	<table class="catalog">
    		<thead>
    			<tr>
                    <td width="80%">Название</td>
                    <td width="20%">Действия</td>
    			</tr>
    		</thead>
    		<tbody>
                {include file='module-catalog-cats-cats.tpl' source=0 level=0}        
            </tbody>
        </table>
    </div>

</div>

{include file="footer_admin.tpl"}