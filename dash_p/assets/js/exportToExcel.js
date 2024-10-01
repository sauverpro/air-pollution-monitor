
document.getElementById('exportButton').addEventListener('click', function() {
    const table = document.getElementById('myTable');
    const rows = table.getElementsByTagName('tr');
    const csvData = [];
    for (let i = 0; i < rows.length; i++) {
        const row = [], cols = rows[i].querySelectorAll('td, th');
        for (let j = 0; j < cols.length; j++) {
            row.push(cols[j].innerText);
        }
        csvData.push(row.join(','));
    }
    const csvString = csvData.join('\n');

    const link = document.createElement('a');
    link.href = 'data:text/csv;charset=utf-8,' + encodeURIComponent(csvString);
    link.target = '_blank';
    link.download = 'mi_psta.xls';
    document.body.appendChild(link);
    link.click();
});