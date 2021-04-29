function salvar(content){
    //Criando o 'content' para identificar o conteúdo pelo ID de cada input
    content = "Nome: "+document.getElementById('nome').value+
        "\nTelefone: "+document.getElementById('tele').value+
        "\nData Nascimento: "+document.getElementById('data').value+
        "\nCPF: "+document.getElementById('cpf').value+
        "\nEndereço: "+document.getElementById('end').value+
        "\nEmail: "+document.getElementById('email').value

    //Criando um elemento 'a' para facilitar a escrita
    var a = document.createElement('a');
    //New Blob para concatenar os valores do 'content'
    var blob = new Blob([content]);
    //Criando o arquivo com o conteúdo
    a.href = window.URL.createObjectURL(blob);
    //Fazendo o download do mesmo em formato .txt
    a.download = "agenda.txt";
    a.click(); 
}