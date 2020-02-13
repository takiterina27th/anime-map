$(function(){
  function buildHTML(comment){
    var comments = comment.text ? `${comment.text}` : "";
    var text = comments.replace(/\n|\r\n|\r/g, '<br>');
    var html = `<div class= "comment__body">
                  <div class= "comment__body__head">
                    <div class= "comment__body__head__user">
                      ${comment.user_name}
                    </div>
                    <div class= "comment__body__head__time">
                      ${comment.created_at}
                    </div>
                    <div class= "comment__body__text">
                      ${text}
                    </div>
                  </div>
                </div>`
    return html;
  }
  $('#new_comment').on('submit', function(e){
    e.preventDefault();
    var formData = new FormData(this);
    var url = $(this).attr('action')
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data){
      var html = buildHTML(data);
      $('.comment').append(html);
      $('.textbox').val('');
      $('.form__submit').prop('disabled', false);
    })
    .fail(function(){
      alert('error');
      $('.form__submit').prop('disabled', false);
    })
  })
})