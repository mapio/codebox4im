Codebox per il Laboratorio di Programmazione
============================================

![CC SA3.0](http://i.creativecommons.org/l/by-sa/3.0/88x31.png)

Questo repository contiene (le configurazioni necessarie a predisporre) una
immagine di una *macchina virtuale* contenente l'ambiente di sviluppo
[Codebox](https://www.codebox.io/), utile allo svolgimento degli esercizi
relativi al corso di [Programmazione](http://boldi.di.unimi.it/Corsi/Mus2014/)
del corso di studi in [Informatica
musicale](http://www.ccdinf.unimi.it/it/corsiDiStudio/2015/F3Xof2/)
dell'[Università degli Studi di Milano](http://www.unimi.it/).

Per approntare tale macchina virtuale è necessario che lo studente
predisponga, secondo le seguenti istruzioni, l'ambiente *ospite* (ossia il
sistema che usa correntemente e che conterrà la macchina virtuale). Lo
studente dovrà:

* scaricare [VirtualBox](https://www.virtualbox.org/), ed installarlo seguendo le [istruzioni](https://www.virtualbox.org/manual/ch02.html) (non è necessario installare l'*extension pack*);
* scaricare ed installare [Vagrant](http://www.vagrantup.com/), seguendo le [instruzioni](http://docs.vagrantup.com/v2/installation/index.html);
* scaricare ed installare [Chrome](https://www.google.com/chrome/).

Una volta installato il software di cui sopra, lo studente dovrà scaricare il
file all'indirizzo [http://git.io/wxmJXw](http://git.io/wxmJXw) e salvarlo col
nome `Vagrantfile` in una directory vuota, portarsi in tale directory ed
impartire il comando

	vagrant up

e predisporsi ad attendere il tempo necessario alla *preparazione* ed *avvio*
della macchina virtuale; la fase di preparazione può richiedere anche un'ora
di tempo (a seconda della velocità di rete), ma viene effettuata
esclusivamente al primo avvio.

Terminata l'esecuzione del precedente comando, lo studente può accedere alla
macchina virtuale aprendo (con Chrome) l'indirizzo
[http://127.0.0.1:8000/start/](http://127.0.0.1:8000/start/).
