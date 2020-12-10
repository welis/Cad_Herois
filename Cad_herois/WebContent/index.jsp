<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/estilo.css">
    <link href="https://fonts.googleapis.com/css?family=Orbitron" rel="stylesheet"> 
    <title>Cadastro de herois</title>
</head>

<body>
    <div class="id-card-wrapper">
        <div class="id-card">
            <div>
                <table style="">
                    <tr>
                        <th>Nome</th>
                        <th>Poder</th>
                        <th>Idade</th>
                        <th>Produtora</th>
                        </tr>
                    <tr>
                        <td>Jill</td>
                        <td>Smith</td>
                        <td>50</td>
                        <td>Marvel</td>
                        
                    </tr>
                </table>
                <hr>
                <button id="myBtn">Adicionar</button>
            </div>
        </div>
    </div>
        <!-- The Modal -->
        <div id="myModal" class="modal">
            <!-- Modal content -->
            <div class="modal-content">
            <span class="close">&times;</span>
                <form action="Inserir.jsp" method="post">
                    <label for="nome">Nome:</label><br>
                    <input type="text" id="nome" name="nome" value="" required><br>
                    <label for="poder">Poder:</label><br>
                    <input type="text" id="poder" name="poder" value="" required><br>
                    <label for="idade">Idade:</label><br>
                    <input type="text" id="idade" name="idade" value="" required><br>
                    <label for="produtora">Produtora:</label><br>
                    <input type="text" id="produtora" name="produtora" value="" required><br><br>
                    <input type="submit" value="Salvar">
                </form>
            </div>
        </div>
    <script>
        // Get the modal
        var modal = document.getElementById("myModal");
        
        // Get the button that opens the modal
        var btn = document.getElementById("myBtn");
        
        // Get the <span> element that closes the modal
        var span = document.getElementsByClassName("close")[0];
        
        // When the user clicks the button, open the modal 
        btn.onclick = function() {
          modal.style.display = "block";
        }
        
        // When the user clicks on <span> (x), close the modal
        span.onclick = function() {
          modal.style.display = "none";
        }
        
        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function(event) {
          if (event.target == modal) {
            modal.style.display = "none";
          }
        }
    </script>

</body>
</html>