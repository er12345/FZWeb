var $TABLE = $('#tbDemand');
var $BTN = $('#export-btn');
var $EXPORT = $('#export');

$('.table-add').click(function () {
  var $clone = $TABLE.find('tr.hide').clone(true).removeClass('hide table-line');
  $TABLE.find('table').append($clone);
});

$('.table-remove').click(function () {
  $(this).parents('tr').detach();
});

$('.table-up').click(function () {
  var $row = $(this).parents('tr');
  if ($row.index() === 1) return; // Don't go above the header
  $row.prev().before($row.get(0));
});

$('.table-down').click(function () {
  var $row = $(this).parents('tr');
  $row.next().after($row.get(0));
});

// A few jQuery helpers for exporting only
jQuery.fn.pop = [].pop;
jQuery.fn.shift = [].shift;

$BTN.click(function () {
  var $rows = $TABLE.find('tr:not(:hidden)');
  var headers = [];
  var data = [];
  
  // Get the headers (add special header logic here)
  $($rows.shift()).find('th:not(:empty)').each(function () {
    headers.push($(this).text().toLowerCase());
  });
  
  // Turn all existing rows into a loopable array
  $rows.each(function () {
    var i=0;  
    var r = [];
    $(this).find('.celVal').each(function(){
        
        // if contains select
        var val;
        if ($(this).find('select').length){
            // get selected key
            val = $(this).find(':selected').text();
        }
        else {
            // else get cell value
            val = $(this).text();
        }
        console.log('value = ' + val);
        // add to row cell array
        r[i++] = val;
    });
    
    // add to rows data
    data.push(r);
  });
  
  // Output the result
  $EXPORT.text(JSON.stringify(data));
});