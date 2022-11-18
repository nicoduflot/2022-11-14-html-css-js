jQuery(function ($) {
    $('#showAllPosts').click(()=>{
        $.ajax({
            /* 
            requête vers le flux de données "url", 
            on indique aussi le type de requête "GET" ou "POST",
            et le format des données de retour "json"
            */
            url: './ressources/posts.json',
            type: 'GET',
            dataType: 'json'
        })
        .done( (reponse)=>{
            /*
            une fois que la réponse est reçue au format adéquat
            on peut la traiter
            */
            console.log(reponse);
            let tabResult = jsonToTable(reponse);
            $('#allPosts thead').html(tabResult[0]);
            $('#allPosts tbody').html(tabResult[1]);
        })
        .fail((erreur)=>{
            $('#allPosts thead').html('<tr><th>ERREUR</th></tr>');
            $('#allPosts tbody').html(`<tr><td>${erreur.responseText}</td></tr>`);
        })
        .always(()=>{
            console.log('fin de la requête');
        });
    });

    $('#showAllUsers').click(()=>{
        $.get(
            './ressources/users.json',
            (data)=>{
                let tabResult = jsonToTable(data);
                $('#allUsers thead').html(tabResult[0]);
                $('#allUsers tbody').html(tabResult[1]);
            },
            'json'
        )
        .fail((erreur)=>{
            $('#allUsers thead').html('<tr><th>ERREUR</th></tr>');
            $('#allUsers tbody').html(`<tr><td>${erreur.responseText}</td></tr>`);
        })
        .always(()=>{
            console.log('fin de la requête .get()');
        });
    });

    //./includes/appel.php

    $('#showAllBooks').click(()=>{
        $.get(
            './includes/appel.php',
            (data)=>{
                let tabResult = jsonToTable(data);
                $('#allBooks thead').html(tabResult[0]);
                $('#allBooks tbody').html(tabResult[1]);
            },
            'json'
        )
        .fail((erreur)=>{
            $('#allBooks thead').html('<tr><th>ERREUR</th></tr>');
            $('#allBooks tbody').html(`<tr><td>${erreur.responseText}</td></tr>`);
        })
        .always(()=>{
            console.log('fin de la requête .get()');
        });
    });

});