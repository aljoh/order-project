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
