function jsonToTable(data, search = ''){
    search = search.toLowerCase();
    let premierParcour = true;
    let thead = '<tr>';
    let tempLine = '';
    let tbody = '';
    let searchOK = ('' === search)?true:false;
    let compare = '';
    data.forEach(element => {
        tempLine = tempLine + '<tr>';
        for(key in element){
            if(premierParcour){
                thead = thead + `<th>${key}</th>`;
            }
            if('object' !== typeof element[key]){
                compare = element[key].toString().toLowerCase();
                if(compare.indexOf(search) >= 0){
                    searchOK = true;
                }
                tempLine = tempLine + `<td data-${key}="${element[key]}">`;
                tempLine = tempLine + ((compare.indexOf(search) >= 0 && '' !== search)?'<mark>': '');
                tempLine = tempLine + element[key];
                tempLine = tempLine + ((compare.indexOf(search) >= 0 && '' !== search)?'</mark>': '');
                tempLine = tempLine + '</td>';
            }else{
                tempLine = tempLine + '<td>';
                
                for(item in element[key]){
                    if('object' !== typeof element[key][item]){
                        compare = element[key][item].toString().toLowerCase();
                        if(compare.indexOf(search) >= 0){
                            searchOK = true;
                        }
                        tempLine = tempLine + `<b>${item}</b>`;
                        tempLine = tempLine + ((compare.indexOf(search) >= 0 && '' !== search)?'<mark>': '');
                        tempLine = tempLine + `<i>${element[key][item]}</i><br />`;
                        tempLine = tempLine + ((compare.indexOf(search) >= 0 && '' !== search)?'</mark>': '');
                    }
                }
                tempLine = tempLine + '</td>';
            }
        }
        tempLine = tempLine + '</tr>';
        /* vérification de la ligne valide à ajouter au tbody */
        if(searchOK){
            tbody = tbody + tempLine;
        }
        premierParcour = false;
        searchOK = ('' === search)?true:false;
        tempLine = '';
    });
    thead = thead + '</tr>';
    return [thead, tbody]
}

function xmlToTable(xml, search = ''){
    let thead = '<tr>';
    let tbody = '';
    let premierParcour = true;
    $(xml).find(search).each(function(){
        let book = $(this).find('*'); /* récupérer les entrée du xml */
        let column = book.length;
        tbody = tbody + '<tr>';
        let mapField = new Map();
        for(let i = 0; i < column; i++){
            let actualNodeName = book.eq(i)[0].nodeName;
            mapField.set(actualNodeName, $(this).find(actualNodeName).text() + ' ');
        }
        console.log(mapField);
        for([key, value] of mapField.entries()){
            console.log(key, value);
            tbody = tbody + '<td>';
            tbody = tbody + value;
            tbody = tbody + '</td>';
            if(premierParcour){
                thead = thead + `<th>${key}</th>`
            }
        }
        premierParcour = false;
        tbody = tbody + '</tr>';
    });
    thead = thead + '</tr>';
    return [thead, tbody]
}