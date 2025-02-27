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
## requisiti funzionali 
I nemici che compaiono in ogni ondata sono scelti in modo casuale.
Il giocatore ha dieci vite. Se più di nove nemici raggiungono la fine del percorso, il gioco termina e compare la scritta "Game Over" in rosso.
Il giocatore può piazzare un numero illimitato di torri, ma deve acquistarle usando le monete.
All'inizio del gioco, il giocatore riceve 70 monete.
Le monete si guadagnano uccidendo i nemici.
il giocatore deve poter posizionare le torri solamente nelle celle non assegnate e non facenti parte del percorso 
il giocatore deve avere la possibilità di schierare due tipi di torri, una ad area e una rapida
il giocatore deve trovarsi nella situazione di affrontare una situazione random di nemici estratti casualmente e progressivamente potenziati nel lungo andare della partita
## requisiti non funzionali


