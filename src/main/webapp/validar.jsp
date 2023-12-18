<script>
    (() => {
        'use strict'

        const forms = document.querySelectorAll('.needs-validation')

        Array.from(forms).forEach(form => {
            form.addEventListener('submit', event => {
                if (!form.checkValidity()) {
                    event.preventDefault()
                    event.stopPropagation()
                }
                form.classList.add('was-validated')
            }, false)
        })
    })()
</script>
<script>
    const data = document.getElementById('input_descripcion').value;
    const total = (235 - data.length)
    if (total <= 235 && total >= 0) {
        document.getElementById('contador').innerText = 'Quedan ' + total + ' caracteres';
    }
</script>