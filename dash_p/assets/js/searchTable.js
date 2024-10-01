const searchInput = document.getElementById('searchInput');
const outputMessage = document.getElementById('outputMessage');
const table = document.getElementById('myTable');
const tbody = table.getElementsByTagName('tbody')[0];
const rows = tbody.getElementsByTagName('tr');

searchInput.addEventListener('input', function() {
  const filter = this.value.toUpperCase();
  let found = false;

  for (let i = 0; i < rows.length; i++) {
    const cells = rows[i].getElementsByTagName('td');
    let display = 'none';
    for (let j = 0; j < cells.length; j++) {
      const cell = cells[j];
      if (cell) {
        const txtValue = cell.textContent || cell.innerText;
        if (txtValue.toUpperCase().indexOf(filter) > -1) {
          display = '';
          found = true;
          break;
        }
      }
    }
    rows[i].style.display = display;
  }

  outputMessage.textContent = found ? '' : 'No records found.';
});