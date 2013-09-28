// JavaScript Document

$(document).ready(function() {
  
$('#propertie_category_select').change(function() {

    if($(this).val() == 0)
    {
        $('#propertie_add').show();
    }
    else
    {
        $('#propertie_add').hide();
    }
    
});
  
});


function addLine(name,source)
{
	$("."+name).append(source);	
}

function clearValue(obj,value)
{
	if(obj.value === value)
	{
		obj.value = '';	
	}
}

function deleteMe(url,msg)
{
    if(confirm(msg))
    {
        document.location = url;
    }
}

function show(id)
{
    alert(id);
}

function Set(url,msg)
{
    if(confirm(msg))
    {
        document.location = url;
    }
}

function getView()
{    
    var request = $.ajax({
      url: "ajax/view.php",
      type: "POST",
      data: $("#filter").serialize(),
      dataType: "html"
    });
    
    request.done(function(msg) {
      $("#ajaxView").html( msg );
    });

}

function getTotalView()
{    
    var request = $.ajax({
      url: "ajax/totalview.php",
      type: "POST",
      data: $("#filter").serialize(),
      dataType: "html"
    });
    
    request.done(function(msg) {
      $("#ajaxTotalView").html( msg );
    });

}

function setToFrom(value)
{
    var dateObj = new Date();
    
    if(value == 1)
    {
        $("#from").attr('value',dateObj.getFullYear() + '-' + strpad00( dateObj.getMonth()+1 ) + '-' + '01');
        $("#to").attr('value',dateObj.getFullYear() + '-' + strpad00( dateObj.getMonth()+1 ) + '-' + '31');
    }
    else if(value == 2)
    {
        $("#from").attr('value',dateObj.getFullYear() + '-' + strpad00( dateObj.getMonth() ) + '-' + '01');
        $("#to").attr('value',dateObj.getFullYear() + '-' + strpad00( dateObj.getMonth() ) + '-' + '31');
    }
    else if(value == 3)
    {
        $("#from").attr('value',dateObj.getFullYear() + '-' + strpad00( dateObj.getMonth()+1 ) + '-' + '01');
        $("#to").attr('value',dateObj.getFullYear() + '-' + strpad00 (dateObj.getMonth()+1 ) + '-' + '15');
    }
    else
    {
        $("#from").attr('value',dateObj.getFullYear() + '-' + strpad00( dateObj.getMonth()+1 ) + '-' + '15');
        $("#to").attr('value',dateObj.getFullYear() + '-' + strpad00( dateObj.getMonth()+1 ) + '-' + '31');        
    }
}

function strpad00(s)
{
    s = s + '';
    if (s.length === 1) s = '0'+s;
    return s;
}

function showcat(source_id)
{
    $("#subcat_" + source_id).slideToggle();
}