<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exercices sur les Boucles</title>
    <style>
        :root {
            --primary-color: #4f46e5;
            --primary-hover: #4338ca;
            --bg-color: #f3f4f6;
            --card-bg: #ffffff;
            --text-main: #1f2937;
            --text-muted: #6b7280;
            --code-bg: #1e293b;
            --code-color: #38bdf8;
        }

        body {
            font-family: 'Segoe UI', system-ui, -apple-system, sans-serif;
            background-color: var(--bg-color);
            color: var(--text-main);
            line-height: 1.6;
            margin: 0;
            padding: 20px;
        }

        .container {
            max-width: 900px;
            margin: 0 auto;
        }

        h1 {
            text-align: center;
            color: var(--primary-color);
            margin-bottom: 2rem;
            font-size: 2.5rem;
        }

        .form-card {
            background: var(--card-bg);
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06);
            text-align: center;
            margin-bottom: 2rem;
        }

        label {
            font-size: 1.1rem;
            font-weight: 500;
            margin-right: 10px;
        }

        input[type="text"] {
            padding: 10px 15px;
            border: 1px solid #d1d5db;
            border-radius: 6px;
            font-size: 1rem;
            outline: none;
            transition: border-color 0.3s;
            width: 100px;
            text-align: center;
        }

        input[type="text"]:focus {
            border-color: var(--primary-color);
            box-shadow: 0 0 0 3px rgba(79, 70, 229, 0.2);
        }

        input[type="submit"] {
            background-color: var(--primary-color);
            color: white;
            border: none;
            padding: 10px 25px;
            border-radius: 6px;
            font-size: 1rem;
            font-weight: 600;
            cursor: pointer;
            transition: background-color 0.3s;
            margin-left: 10px;
        }

        input[type="submit"]:hover {
            background-color: var(--primary-hover);
        }

        .grid-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
            gap: 20px;
        }

        .exercise-card {
            background: var(--card-bg);
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);
            display: flex;
            flex-direction: column;
        }

        h2 {
            color: var(--primary-color);
            font-size: 1.25rem;
            margin-top: 0;
            border-bottom: 2px solid var(--bg-color);
            padding-bottom: 10px;
        }

        .description {
            color: var(--text-muted);
            font-size: 0.95rem;
            margin-bottom: 15px;
            flex-grow: 1;
        }

        /* Classe cruciale pour l'alignement des étoiles */
        .shape-output {
            font-family: 'Courier New', Courier, monospace;
            background-color: var(--code-bg);
            color: var(--code-color);
            padding: 15px;
            border-radius: 8px;
            line-height: 1.2;
            overflow-x: auto;
            text-align: center;
            font-size: 1.1rem;
            letter-spacing: 2px;
        }

        .math-table {
            background-color: var(--bg-color);
            padding: 15px;
            border-radius: 8px;
            text-align: center;
            font-size: 1.1rem;
            font-weight: 500;
        }

        .math-table p {
            margin: 5px 0;
        }

        .back-link {
            display: block;
            text-align: center;
            margin-top: 30px;
            color: var(--primary-color);
            text-decoration: none;
            font-weight: 600;
            font-size: 1.1rem;
        }

        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Exercices sur les boucles</h1>

    <div class="form-card">
        <form action="#" method="post">
            <label for="inputValeur">Saisir le nombre d'étoiles :</label>
            <input type="text" id="inputValeur" name="valeur" placeholder="Ex: 5" required>
            <input type="submit" value="Générer">
        </form>
    </div>

    <%-- Récupération de la valeur saisie par l'utilisateur --%>
    <% String valeur = request.getParameter("valeur"); %>
    
    <%-- Vérification de l'existence de la valeur --%>
    <% if (valeur != null && !valeur.isEmpty()) { %>
        <% int cpt = Integer.parseInt(valeur); %>

        <div class="grid-container">
            
            <div class="exercise-card" style="grid-column: 1 / -1;">
                <h2>Ligne simple</h2>
                <p class="description">Boucle for pour afficher une simple ligne d'étoiles</p>
                <div class="shape-output">
                    <% for (int i = 1; i <= cpt; i++) { %>
                        <%= "*" %>
                    <% } %>
                </div>
            </div>

            <div class="exercise-card">
                <h2>Exercice 1 : Le carré d'étoiles</h2>
                <p class="description">Écrire le code afin de produire un carré d'étoiles</p>
                <div class="shape-output">
                    <% for (int i = 1; i <= cpt; i++) { 
                        for (int j = 1; j <= cpt; j++) { 
                            out.print("*");
                        } 
                        out.print("<br>");
                    } %>
                </div>
            </div>

            <div class="exercise-card">
                <h2>Exercice 2 : Triangle rectangle gauche</h2>
                <p class="description">Écrire le code afin de produire un triangle rectangle aligné sur la gauche</p>
                <div class="shape-output">
                    <% for (int i = 1; i <= cpt; i++) { 
                        for (int j = 1; j <= i; j++) { 
                            out.print("*");
                        } 
                        out.print("<br>");
                    } %>
                </div>
            </div>

            <div class="exercise-card">
                <h2>Exercice 3 : Triangle rectangle inversé</h2>
                <p class="description">Écrire le code afin de produire un triangle rectangle inversé</p>
                <div class="shape-output">
                    <% for (int i = cpt; i >= 1; i--) { 
                        for (int j = 1; j <= i; j++) { 
                            out.print("*");
                        } 
                        out.print("<br>");
                    } %>
                </div>
            </div>

            <div class="exercise-card">
                <h2>Exercice 4 : Triangle rectangle 2</h2>
                <p class="description">Écrire le code afin de produire un triangle rectangle aligné sur la droite</p>
                <div class="shape-output">
                    <% for (int i = 1; i <= cpt; i++) { 
                        for (int s = 1; s <= (cpt - i); s++) {
                            out.print("&nbsp;&nbsp;"); 
                        }
                        for (int j = 1; j <= i; j++) { 
                            out.print("*");
                        } 
                        out.print("<br>");
                    } %>
                </div>
            </div>

            <div class="exercise-card">
                <h2>Exercice 5 : Triangle isocèle</h2>
                <p class="description">Écrire le code afin de produire un triangle isocèle</p>
                <div class="shape-output">
                    <% for (int i = 1; i <= cpt; i++) { 
                        for (int s = 1; s <= (cpt - i); s++) {
                            out.print("&nbsp;"); 
                        }
                        for (int j = 1; j <= i; j++) { 
                            out.print("*");
                        } 
                        out.print("<br>");
                    } %>
                </div>
            </div>

            <div class="exercise-card">
                <h2>Exercice 6 : Le demi-losange</h2>
                <p class="description">Écrire le code afin de produire un losange</p>
                <div class="shape-output">
                    <% 
                    for (int i = 1; i <= cpt; i++) { 
                        for (int s = 1; s <= (cpt - i); s++) {
                            out.print("&nbsp;&nbsp;");
                        }
                        for (int j = 1; j <= i; j++) { 
                            out.print("*");
                        } 
                        out.print("<br>");
                    }
                    for (int i = cpt - 1; i >= 1; i--) { 
                        for (int s = 1; s <= (cpt - i); s++) {
                            out.print("&nbsp;&nbsp;");
                        }
                        for (int j = 1; j <= i; j++) { 
                            out.print("*");
                        } 
                        out.print("<br>");
                    } 
                    %>
                </div>
            </div>

            <div class="exercise-card" style="grid-column: 1 / -1;">
                <h2>Exercice 7 : La table de multiplication</h2>
                <p class="description">Écrire le code afin de créer une table de multiplication</p>
                <div class="math-table">
                    <% for (int i = 1; i <= cpt; i++) { %>
                        <p><%= cpt %> x <%= i %> = <strong><%= cpt * i %></strong></p>
                    <% } %>
                </div>
            </div>

        </div> <% } %>

    <a href="index.html" class="back-link">← Retour au sommaire</a>
</div>

</body>
</html>
