// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .
function filterTable() {
  valueNumber = getValue("numberInput");
  valueCustomer = getValue("customerInput");
  valueState = getValue("stateInput");
  table = document.getElementById("orderTable");
  tr = table.getElementsByTagName("tr");
  for ( i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td");
    if (td.length > 0) {
      if (td[0].innerHTML.toUpperCase().indexOf(valueNumber) > -1 &&
          (td[1].innerHTML.toUpperCase().indexOf(valueCustomer) > -1 || valueCustomer === 'ALL') &&
          (td[10].innerHTML.toUpperCase().indexOf(valueState) > -1 || valueState === 'ALL') ) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }
  }
}

function getValue(id) {
  return document.getElementById(id).value.toUpperCase();
}
