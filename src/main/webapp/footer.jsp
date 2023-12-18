<script>
    document.addEventListener('keyup', () => {
        const data = document.getElementById('input_descripcion').value;
        const total = (235 - data.length)
        if (total <= 235 && total >= 0) {
            document.getElementById('contador').innerText = 'Quedan ' + total + ' caracteres';
        }
    }, false);
</script>