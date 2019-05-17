
$(document).ready(function(){

    $('#sub').on('click', function(e){

        e.preventDefault();
        var item = $('#item').val();
        var todo = {item: item};

        $.ajax({
          type: 'POST',
          url: '/todo',
          data: todo,
          success: function(data){
            location.reload();
          }
        });

        return false;

    });

    $('li').on('click', function(){
        var item = $(this).text().replace(/ /g,"-");


        $.ajax({
          type: 'DELETE',
          url: '/todo/' + item,
          success: function(data){
            location.reload();

          }
        });
    });


  });
