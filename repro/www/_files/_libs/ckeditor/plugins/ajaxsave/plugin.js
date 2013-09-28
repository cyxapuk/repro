var saveCmd = {
    modes : { wysiwyg:1 },
    exec : function( editor ) {
        var $content = editor.getData();
        var $data = {'keyId': 1, 'token': TOKEN, 'content': $content};

        $.ajax({
            type: 'post',
            url: '../../script/php/file.php',
            data: $data,
            dataType: 'json',
            cache: false,
            success: function(data) {

                    alert( 'OK' );

            },
            error: function(data){
                alert('fatal error');
            }
        });
       CKEDITOR.instances.editor1.destroy();
   }

}