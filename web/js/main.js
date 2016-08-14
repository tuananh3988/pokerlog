
    function getUrlParameter(sParam) {
        var sPageURL = decodeURIComponent(window.location.search.substring(1)),
            sURLVariables = sPageURL.split('&'),
            sParameterName,
            i;

        for (i = 0; i < sURLVariables.length; i++) {
            sParameterName = sURLVariables[i].split('=');

            if (sParameterName[0] === sParam) {
                return sParameterName[1] === undefined ? true : sParameterName[1];
            }
        }
    };
    
    function getListIdPlayer() {
        var players =  getUrlParameter('players');
        return players.split(',');
    }
    
    function pushPlayerToList(id) {
        var players = getListIdPlayer();
        if (players.indexOf(id) == -1) {
            players.push(id);
        }
        
        window.location.href = '/site/play?players=' + players.join();
    }
    
    function removePlayerToList(id) {
        var players = getListIdPlayer();
        var index = players.indexOf(id);
        if ( index > -1) {
            players.splice(index, 1);
        }
        
        window.location.href = '/site/play?players=' + players.join();
    }


