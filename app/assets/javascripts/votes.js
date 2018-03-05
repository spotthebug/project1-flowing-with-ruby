// $('up').on('submit', function(e) {
//   e.preventDefault();
// 
//   $.ajax({
//       method: 'POST',
//       url: '/votes',
//       success: function( response ) {
//         console.log(response);
//         var bookInfo = response.items[0].volumeInfo;
// 
//         var listItemHTML = '<li>'
// 				listItemHTML += '<h2>' + bookInfo.title + '</h2>'
// 				listItemHTML += '<p>' + bookInfo.description + '</p>'
// 				listItemHTML += '<img src="' + bookInfo.imageLinks.thumbnail + '">'
// 				listItemHTML += '<a href="' + bookInfo.previewLink + '">Preview Book</a>'
// 				listItemHTML += '</li>'
// 
//         $('').append(listItemHTML);
// 
//       }
//   });
// });