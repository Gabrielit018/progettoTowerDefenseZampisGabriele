# Progetto tower defense di Zampis Gabriele
Il progetto consiste in un gioco in 2D ispirato ai giochi Tower Defense, ma con una grafica semplificata. L'obiettivo del giocatore è posizionare delle torri lungo un percorso per fermare i nemici prima che raggiungano la fine del tracciato. Se un nemico arriva alla fine, il giocatore perde una vita. Quando tutte e dieci le vite sono esaurite, il gioco mostra la schermata di game over. Ci sono 3 tipi di nemici, il tank, quello veloce, e quello standard, ognuno con caratteristiche differenti:
 nemico tank: più lento ma possiede più vita
 nemico normale: standard, una via di mezzo dei due 
 nemico rapido: molto più veloce ma dispone di meno vita 
## meccanismi di gioco 
il giocatore durante il gioco è tenuto a piazzare delle torri nella cella tramite l'utilizzo del mouse e di uno dei due tasti (1 o 2) per posizionare una delle due torri:
 torre ad area: ha un area e un danno maggiore, ma è molto lenta, costo: 50 monete
 torre rapida: ha un area minore e un danno minore, ma colpisce molto più velocemente, costo: 70 monete 
difficolta
col passare del tempo il gioco diventerà sempre più complesso, e ad una certa sarà impossibile vincere, è presente un moltiplicatore della vita che ogni 10 secondi aumenta di n numero la vita, rendendo ad una certa il gioco impossibilie da vincere
col passare del tempo inoltre vengono generati sempre più nemici, per raggiungere questo spawn massimo bisogna sopravvivere 40 secondi 
