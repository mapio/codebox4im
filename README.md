# Codebox per il Laboratorio di Programmazione

![CC SA3.0](http://i.creativecommons.org/l/by-sa/3.0/88x31.png)

Questo repository contiene (le configurazioni necessarie a predisporre) una
immagine di una *macchina virtuale* contenente l'ambiente di sviluppo
[Codebox](https://www.codebox.io/), utile allo svolgimento degli esercizi
relativi al corso di [Programmazione](http://boldi.di.unimi.it/Corsi/Mus2014/)
del corso di studi in [Informatica
musicale](http://www.ccdinf.unimi.it/it/corsiDiStudio/2015/F3Xof2/)
dell'[Università degli Studi di Milano](http://www.unimi.it/).

## Istruzioni d'uso

Di seguito sono riportate le istruzioni d'uso che sono differenti nel caso del
*primo uso* (che richiede un lungo processo di *preparazione* della macchina
vituale) e degli utilizzi successivi (che possono, al più, richiedere il
*riavvio* della macchina medesima.)

### Primo uso (installazione)

Per approntare tale macchina virtuale è necessario predisporre, secondo le
seguenti istruzioni, l'ambiente *ospite* (ossia il sistema che usa
correntemente e che conterrà la macchina virtuale). Lo studente dovrà:

* scaricare [VirtualBox](https://www.virtualbox.org/), ed installarlo seguendo le [istruzioni](https://www.virtualbox.org/manual/ch02.html) (non è necessario installare l'*extension pack*);
* scaricare ed installare [Vagrant](http://www.vagrantup.com/), seguendo le [instruzioni](http://docs.vagrantup.com/v2/installation/index.html);
* scaricare ed installare [Chrome](https://www.google.com/chrome/).

Una volta installato il software di cui sopra, è necessario scaricare il file
all'indirizzo [http://git.io/CJ-rWA](http://git.io/CJ-rWA) e salvarlo col nome
`Vagrantfile` (senza estensione `.txt`) in una directory vuota (il cui nome **non contenga accenti o lettere speciali**), portarsi in
tale directory ed impartire il comando

	vagrant up

e predisporsi ad attendere il tempo necessario alla *preparazione* ed *avvio*
della macchina virtuale; la fase di preparazione può richiedere anche un'ora
(a seconda della velocità di rete), ma viene effettuata esclusivamente al
primo avvio.

Terminata l'esecuzione del precedente comando, è possibile accedere alla
macchina virtuale aprendo (con Chrome) l'indirizzo
[http://127.0.0.1:8000/start/](http://127.0.0.1:8000/start/).

**Nota bene**: se il processo sembra *arrestarsi troppo a lungo*, oppure
riporta dei *messaggi d'errore*, o al termine del medesimo l'indirizzo sopra
indicato *non è accessibile*, è possibile costruire da capo la macchina
virtuale *eliminando* il file `provision.sh` eventualmente presente e dando i
comandi

    vagrant destroy -f
    vagrant up

nella cartella dove è presente il file`Vagrantfile`.

### Usi successivi

Se il sistema operativo **ospite** viene *spento* (o per qualche altra ragione
si arresta la macchina virtuale approntata al passo precedente) è possibile
*metterla di nuovo in esecuzione* posizionandosi nella cartella  dove è
presente il file`Vagrantfile` e dando i comandi

    vagrant up

o, nel caso il comando risponda che la macchina è già in funzione (ossia nello
stato `running`), è possibile *riavviarla* in caso di necessità con il comando

    vagrant reload

In fine, qualora venga **aggiornata** la configurazione della macchina, è
possibile aggiornare la macchina virtuale con il comando

	vagrant halt
	vagrant up --provision

che potrebbe richiedere, a seconda dei casi, una lunga attesa; in caso siano
da **aggiornare solo le librerie Java** è possibile usare il comando

	curl -sL http://git.io/xYrFRQ | sudo bash

che va impartito **nel terminale di codebox** (e *non* della *macchina
ospite*).

### In SiLab

Per poter utilizzare in SiLab un ambiente simile a quello qui descritto è
sufficiente invocare il comando

	 /users/ms000123/dbin/runcodebox

oppure, generando (una sola volta) il *link simbolico* seguente

	ln -s  /users/ms000123/dbin/runcodebox $HOME

ed invocare successivamente il comando

	./runcodebox

nella propria *home directory*.


## Note tecniche


L'ambiente di sviluppo presente nella macchina virtuale comprende:

- [Ubuntu 14.04.1](http://releases.ubuntu.com/14.04/)
- [Java SE Development Kit 7](http://www.oracle.com/technetwork/java/javase/downloads/jdk7-downloads-1880260.html)
- [Java Platform SE 7 Documentation](http://docs.oracle.com/javase/7/docs/)
- [Codebox](https://www.codebox.io/)
- [prog](http://pighizzini.di.unimi.it/jb/librerie/)
- [j4im](https://github.com/mapio/j4im)

È ovviamente possibile installare tale software direttamente sul sistema
ospite.
