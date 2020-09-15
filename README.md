# Parametri per modelli basati su euristiche

Le funzioni che variano al variare dei parametri utilizzati sono 3:
    
    - cathUM
    - newUsrs
    - getHeatMap

## catchUM(users, objs, version)

Si occuperà di creare la utility matrix a partire dai file testuali

#### Parametri:

###### users: lista degli utenti presenti nel sistema
###### objs: lista degli oggetti presenti nel sistema
###### version: stringa indicante la metodologia di costruzione della utility matrix

version può assumere uno dei seguenti valori:
    - "V1" : utilizzare per il "time-only based model"
    - "V2" : utilizzare per il "Attention-based model V1"
    - "V3" : utilizzare per il "Attention-based model V2"

## newUsrs(um, names, users, objs, alphas, version, distance)

Si occuperà creare la riga riguardante un nuovo utente analizzando riga per riga il corrispondente file testuale (simulerà lo streaming di dati che avverrebbe in un'applicazione reale)

#### Parametri:

###### um: utility matrix già esistente del sistema
###### names = lista degli utenti da aggiungere
###### users = lista degli utenti attualmente nel sistema
###### objs = lista degli oggetti attualmente nel sistema   
###### alphas = lista delle 3 soglie di raccomandazione scelte, vanno espresse come valori in [0,1]
###### version = versione della utility matrix scelta

version può assumere uno dei seguenti valori:
    - "V1" : utilizzare per il "time-only based model"
    - "V2" : utilizzare per il "Attention-based model V1"
    - "V3" : utilizzare per il "Attention-based model V2"

###### distance = misura di distanza scelta

distance può assumere uno dei seguenti valori:
    - "euclidean" : distanza euclidea
    - "cosine" : distanza del coseno
    - "baht" : similarità di bhattacharyya
    - "chisquared" : similarità chis-quared

## getHeatMap(similarity, version):

Si occuperà di generare la heatmap per le similarità tra gli utenti utilizzando la similarità scelta 

#### Parametri:

###### version = versione della utility matrix scelta

version può assumere uno dei seguenti valori:
    - "V1" : utilizzare per il "time-only based model"
    - "V2" : utilizzare per il "Attention-based model V1"
    - "V3" : utilizzare per il "Attention-based model V2"

###### distance = misura di distanza scelta

distance può assumere uno dei seguenti valori:
    - "euclidean" : distanza euclidea
    - "cosine" : distanza del coseno
    - "baht" : similarità di bhattacharyya
    - "chisquared" : similarità chis-quared
