fetch("http://localhost:4000/accounts")
  .then(response => response.json())
  .then(response => {

    console.log(response)
    const $select = document.querySelector("select")
    const $options =
    response.accounts.map(account => {
      const $option = document.createElement("option");
      $option.textContent = account.name;
      $option.value = account.id;
      return $option;
    });
    console.log($options)
    $options.forEach($option => {
      $select.append($option);
    });

  });

function yesnoCheck() {
    if (document.getElementById('yesCheck').checked) {
        document.getElementById('ifYes').style.display = '';
    } else {
        document.getElementById('ifYes').style.display = 'none';
    }
