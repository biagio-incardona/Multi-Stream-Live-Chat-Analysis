# Multi-Stream-Live-Chat-Analysis

## Cos'è?

Twitch-Youtube-Chat-Analysis è un progetto universitario realizzato per il corso **TECHNOLOGIES FOR ADVANCED PROGRAMMING** dallo studente Incardona Biagio.
Il progetto consiste nell'analisi in real time delle interazioni degli spettatori di un live stream su YouTube e/o Twitch.

## Per chi?

Il progetto è mirato a tutti gli streamer, specialmente per coloro che abitualmente effettuano stream su più piattaforme in parallelo, in questo caso YouTube e Twitch.

Tale progetto può anche essere utilizzato da potenziali investitori (brand in cerca di pubblicità) al fine da evitare di investire su profili con views comprate o con un basso impatto sul pubblico.

## Obbiettivo

Lo scopo ultimo di tale progetto è quello di avere un'interfaccia semplificata per analizzare il comportamento degli spettatori, in quanto le chat in una live stream sono spesso molto confusionare.
Tale problematica viene ulteriormente amplificata se si effettuano gli stream in parallelo su più piattaforme.

Verrà quindi fornita una dashboard contenente le analisi principali con la possibilità:
  1. Avere un'analisi riassuntiva riguardante entrambe le piattaforme contemporaneamente
  2. Avere un'analisi mirata alla singola piattaforma

## Tecnologie utilizzate
  * virtualizzazione : Docker
  * Ingestion : Logstash + Scraping + API
    1. Scraping : Selenium
  * Streaming : Apache Kafka
  * Processing : Apache Spark
  * Natural Language Processing : SpaCy
  * Sentiment analysis : Vader
  * Indicizzazione : ElasticSearch
  * Visualizzazione : Kibana
  
## Schema generale

<p align="center">
  <img src="doc/Schema.png" width="600" title="hover text">
</p>
  
# Utilizzo

## Requisiti

Per il corretto funzionamento è richiesto aver installato Docker, il resto delle dipendenze e file necessari verranno aggiunti in automatico al primo avvio.

## Guida

***Innanzitutto spostarsi dentro la directory del progetto***

#### 1. Primo avvio (o in caso di docker images cancellate)
Se è la prima volta che stai avviando il progetto (o ti si sono cancellate le docker images) esegui il seguente script, poi passa al punto 2.

```shell

$ ./build.sh

```
NOTA: Questo passaggio potrebbe richiedere molto tempo, dipende dalla connessione ad internet disponibile

#### 2. Avvio

Per avviare il progetto basta eseguire lo script 

```shell

$ ./start.sh [-t "nome del canale twitch, tutto in minuscolo"] [-y "id dello stream youtube*"] 

```

per ottenere l'id dello stream youtube basta estrapolare la parte finale dell'indirizzo web

es.
link : https://www.youtube.com/watch?v=US6iyJKGNLI

id dello stream : **US6iyJKGNLI**

I parametri -t e -y sono opzionali (almeno uno deve essere presente) e possono essere scambiati di posizione.

#### Stop

Per fermare il progetto basta eseguire il seguente script. Verranno Stoppati tutti i container ed a loro volta eliminati

```shell

$ ./stop.sh

```
