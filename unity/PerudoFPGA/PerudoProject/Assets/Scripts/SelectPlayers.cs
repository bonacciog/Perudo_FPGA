using System.Collections;
using System.Text;
using UnityEngine;
using System;
using System.IO.Ports;

public class SelectPlayers : MonoBehaviour
{
    public GameObject majinBu;
    public GameObject ironman;
    public GameObject mario;
    public GameObject laraCroft;
    public GameObject naruto;
    public GameObject elfo;
    public GameObject batman;
    public GameObject yoshi;
    public GameObject CameraSelectPlayer;
    public GameObject CameraGame;
    public GameObject CameraStart;
    public GameObject CameraShowDice;
    public GameObject CameraMenu;
    public GameObject CameraEndGame;
    public GameObject propriDadi;
    public GameObject ricorrenzaBet;
    public GameObject FirstTxt;
    public GameObject SecondTxt;
    public GameObject ThirdTxt;
    public GameObject FourthTxt;
    public GameObject FifthTxt;
    public GameObject SixthTxt;
    public GameObject SeventhTxt;
    public GameObject EighthTxt;
    public GameObject ErrorTxt;
    public GameObject currentBetTxt;
    public GameObject winnerTarget;
    public GameObject gameOverTxt;

    public GameObject betResultTxt;
    public GameObject showDiceTxt;
    public GameObject dadoBet;
    public GameObject currentDice;
    public GameObject winner;
    public GameObject victoryEffect;

    
    public int turno;
    private bool dx;
    private bool sx;
    private bool ok;
    private bool inizializzaTavola;
    private bool entraInStartGame;

    //private bool settaFase2;

    private bool waitNumberOfDice;
    private bool waitNumberOfPlayers;
    private bool waitIndexPlayer;
    private bool waitAllDice;
    private int counterPlayers;
    private int indiceGiocatore;
    private int indiceDado;
    private int numeroGiocatori;

    private bool waitTurn;

    private bool waitBet;
    private bool waitRepetition;
    private bool dubito;
    private int dadoScommesso;
    private int ricorrenzaScommessa;
    private bool fase2;
    private bool betphase;
    private bool blockAddRem;

    private int haPerso;
    private int haDubitato;
    private bool waitShow;

    private bool Selected;
    private int index;
    private int counter;
    private int[,] dadiUsciti = new int[8, 6];
    private int[] numeroDadi = new int[8];
    private int[] totPerDice = new int[7];
    private string[] players = new string[8];

    private bool stayClose = false;
    private bool closeMenu = false;

    private int messageIndex;
    
    private int currentRepetition;

    public GameObject glass1;
    public GameObject dadi1;
    public GameObject dado11;
    public GameObject dado21;
    public GameObject dado31;
    public GameObject dado41;
    public GameObject dado51;

    public GameObject glass2;
    public GameObject dadi2;
    public GameObject dado12;
    public GameObject dado22;
    public GameObject dado32;
    public GameObject dado42;
    public GameObject dado52;

    public GameObject glass3;
    public GameObject dadi3;
    public GameObject dado13;
    public GameObject dado23;
    public GameObject dado33;
    public GameObject dado43;
    public GameObject dado53;

    public GameObject glass4;
    public GameObject dadi4;
    public GameObject dado14;
    public GameObject dado24;
    public GameObject dado34;
    public GameObject dado44;
    public GameObject dado54;

    public GameObject glass5;
    public GameObject dadi5;
    public GameObject dado15;
    public GameObject dado25;
    public GameObject dado35;
    public GameObject dado45;
    public GameObject dado55;

    public GameObject glass6;
    public GameObject dadi6;
    public GameObject dado16;
    public GameObject dado26;
    public GameObject dado36;
    public GameObject dado46;
    public GameObject dado56;

    public GameObject glass7;
    public GameObject dadi7;
    public GameObject dado17;
    public GameObject dado27;
    public GameObject dado37;
    public GameObject dado47;
    public GameObject dado57;

    public GameObject glass8;
    public GameObject dadi8;
    public GameObject dado18;
    public GameObject dado28;
    public GameObject dado38;
    public GameObject dado48;
    public GameObject dado58;

    public GameObject dadoBet1;
    public GameObject dadoBet2;
    public GameObject dadoBet3;
    public GameObject dadoBet4;
    public GameObject dadoBet5;
    public GameObject dadoBet6;
    public GameObject dadoBet7;

    public GameObject myDice1;
    public GameObject myDice2;
    public GameObject myDice3;
    public GameObject myDice4;
    public GameObject myDice5;


    public GameObject goku;
    public GameObject barman;
    public GameObject dragonFly;
    private SerialPort mySerialPort;





    void OnSerialData(string Data)
    {
        Debug.Log("[Data received +" + messageIndex + " ] " + Data);
        messageIndex++;
        ErrorTxt.SetActive(false);
        char[] str = Data.ToCharArray();
        for (int i = 0; i < str.Length; i++)
        {
            processChar(str[i]);
        }
    }
    private void processChar(char c)
    {
        if (c == 'S' && !waitRepetition)//sinistra-rimuovi-decrementa
        {
            SoundManagerScript.PlaySound("sxDx");
            sx = true;
        }
        if(c == 'D' && !waitRepetition)//destra-aggiungi-incrementa
        {
            SoundManagerScript.PlaySound("sxDx");
            dx = true;
        }
        if(c== 'O' && !waitRepetition) // conferma
        {
            SoundManagerScript.PlaySound("ok");
            ok = true;
        }
        if(c == 'X' && !waitRepetition)//dubito
        {
            dubito = true;
        }
        if (c == 'A' && !waitRepetition)
        {
            currentBetTxt.SetActive(false);
            currentDice.SetActive(false);
            betphase = true;
            //Debug.Log("atteso A");
            //Debug.Log("ricevuto " + c);
            haPerso = -1;
            haDubitato = -1;
            //mi arriva in sequenza "indice giocatore i " - "numero dadi del giocatore i-esimo" - "dado 1, dado2, dado3.." 
            waitNumberOfPlayers = true;

            for (int i = 0; i < 8; i++)
            {
                numeroDadi[i] = 0;
                for (int j = 1; j <= 5; j++)
                {
                    dadiUsciti[i, j] = 0;
                }
            }
            counterPlayers = 0;
            numeroGiocatori = 0;
            turno = -1;
        }
        else if (waitNumberOfPlayers)
        {
            //Debug.Log("atteso numero giocatori");
            //Debug.Log("ricevuto " + c);
            numeroGiocatori = c - 48;
            waitNumberOfPlayers = false;
            waitIndexPlayer = true;
        }
        else if (waitIndexPlayer && counterPlayers < numeroGiocatori)
        {
            //Debug.Log("atteso indice giocatore");
            //Debug.Log("ricevuto " + c);
            indiceGiocatore = c - 48;
            waitIndexPlayer = false;
            waitNumberOfDice = true;
            counterPlayers++;

        }
        else if (waitNumberOfDice)
        {
            //Debug.Log("atteso numero dadi");
            //Debug.Log("ricevuto " + c);
            numeroDadi[indiceGiocatore] = c - 48;  //numero di dadi in possesso del giocatore i-esimo.
            waitNumberOfDice = false;
            waitAllDice = true;

        }
        else if (waitAllDice)
        {
            //Debug.Log("atteso dado" + indiceDado);
            //Debug.Log("ricevuto " + c);
            dadiUsciti[indiceGiocatore, indiceDado] = c - 48;
            indiceDado++;
            entraInStartGame = false;
            if (indiceDado > numeroDadi[indiceGiocatore]) //se ad esempio ricevo il quinto dado del giocatore 0, passo al giocatore successivo.
            {
                waitAllDice = false;
                indiceGiocatore++;
                indiceDado = 1;
                waitIndexPlayer = true;
                if (numeroGiocatori == counterPlayers)//finiti i dati relativi ai gioatori in gioco.
                    entraInStartGame = true;
            }
        }

        if (c == 'T' && !waitRepetition)
        {
            Debug.Log("atteso T");
            Debug.Log("ricevuto " + c);
            waitTurn = true;
            ricorrenzaScommessa = 0;
            dadoScommesso = 0;
            waitIndexPlayer = false;
            inizializzaTavola = true;
            turno = -1;

        }
        else if (waitTurn)
        {
            Debug.Log("atteso turno");
            Debug.Log("ricevuto " + c);
            turno = c - 48; //turno è un giocatore da 0 a 7.
            //illumino i biccheri.
            Behaviour bglass1 = glass1.GetComponent<Behaviour>();
            Behaviour bglass2 = glass2.GetComponent<Behaviour>();
            Behaviour bglass3 = glass3.GetComponent<Behaviour>();
            Behaviour bglass4 = glass4.GetComponent<Behaviour>();
            Behaviour bglass5 = glass5.GetComponent<Behaviour>();
            Behaviour bglass6 = glass6.GetComponent<Behaviour>();
            Behaviour bglass7 = glass7.GetComponent<Behaviour>();
            Behaviour bglass8 = glass8.GetComponent<Behaviour>();

            dadoBet1.SetActive(false); dadoBet2.SetActive(false); dadoBet3.SetActive(false); dadoBet4.SetActive(false);
            dadoBet5.SetActive(false); dadoBet6.SetActive(false); dadoBet7.SetActive(false);

            bglass1.enabled = false; bglass2.enabled = false; bglass3.enabled = false; bglass4.enabled = false;
            bglass5.enabled = false; bglass6.enabled = false; bglass7.enabled = false; bglass8.enabled = false;
            FirstTxt.SetActive(false);
            dadoBet.SetActive(false);
            ricorrenzaBet.SetActive(false);

            switch (turno)
            {
                case 0:
                    bglass1.enabled = true;
                    break;
                case 1:
                    bglass2.enabled = true;
                    break;
                case 2:
                    bglass3.enabled = true;
                    break;
                case 3:
                    bglass4.enabled = true;
                    break;
                case 4:
                    bglass5.enabled = true;
                    break;
                case 5:
                    bglass6.enabled = true;
                    break;
                case 6:
                    bglass7.enabled = true;
                    break;
                case 7:
                    bglass8.enabled = true;
                    break;
            }
            waitTurn = false;
            SecondTxt.SetActive(false); ThirdTxt.SetActive(false); FourthTxt.SetActive(false); FifthTxt.SetActive(false);
            SixthTxt.SetActive(false); SeventhTxt.SetActive(false); EighthTxt.SetActive(false);
        }

        if (c == 'B' && !waitRepetition) //così anche se ricevo ricorrenza = B (che equivalgono a un numero) non entro in sto caso.
        {
            SoundManagerScript.PlaySound("ok");
            Debug.Log("atteso B");
            Debug.Log("ricevuto " + c);
            waitBet = true;
        }
        else if (waitBet)
        {
            Debug.Log("atteso dado scommesso");
            Debug.Log("ricevuto dado scommesso " + c);
            dadoScommesso = c - 48;
            waitBet = false;
            waitRepetition = true;
        }
        else if (waitRepetition)
        {
            Debug.Log("attesa ricorrenza scommessa");
            Debug.Log("ricevuto ricorrenza scommessa " + c);
            ricorrenzaScommessa = c - 48;
            currentRepetition = ricorrenzaScommessa;
            waitRepetition = false;
        }

        if (c == 'Z')
        {
            Debug.Log("atteso Z");
            Debug.Log("ricevuto " + c);
            waitShow = true;
            betphase = false;
            dubito = false;

        }
        else if (waitShow)
        {
            Debug.Log("atteso indice del perdente ");
            Debug.Log("ricevuto indice del perdente " + c);
            for (int i = 1; i <= 6; i++) 
            {
                totPerDice[i] = 0;
            }
            haPerso = c - 48;
            waitShow = false;
            dadoBet.SetActive(false);
        }
        if (c == 'e') //Error per me che gioco, devo aumentare la scommessa.
        {
            ErrorTxt.SetActive(true);
            fase2 = false;
            turno = 0;
            SoundManagerScript.PlaySound("error");
        }
        if(c== 'I')//inizio.
        {
            closeMenu = true;
        }
        if (c == 'Y')//Fine.
        {
            CameraShowDice.SetActive(false);
            CameraEndGame.SetActive(true);
            if (haPerso == 0)
            {
                winnerTarget.GetComponent<TextMesh>().text = "Non tu!";
                gameOverTxt.SetActive(true);
                SoundManagerScript.StopAllSounds();
                SoundManagerScript.PlaySound("gameOver");
                SoundManagerScript.PlaySound("boo");
            }
            else
            {
                winnerTarget.GetComponent<TextMesh>().text = players[0];
                victoryEffect.SetActive(true);
                SoundManagerScript.PlaySound("victory");
                SoundManagerScript.PlaySound("applause");
                switch (players[0])
                {
                    case "majinBu":
                        majinBu.GetComponent<Rigidbody>().position = new Vector3(-11575, 8565, -5785);
                        majinBu.GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, -90, 0);
                        break;
                    case "laraCroft":
                        laraCroft.GetComponent<Rigidbody>().position = new Vector3(-11578, 8687, -5786);
                        laraCroft.GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, -90, 0);
                        break;
                    case "yoshi":
                        yoshi.GetComponent<Rigidbody>().position = new Vector3(-11453, 7693, -5819);
                        yoshi.GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, 105, 0);
                        break;
                    case "ironman":
                        ironman.GetComponent<Rigidbody>().position = new Vector3(-11568, 8564, -5795);
                        ironman.GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, -90, 0);
                        break;
                    case "elfo":
                        elfo.GetComponent<Rigidbody>().position = new Vector3(-11564, 8654, -5779);
                        elfo.GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, -90, 0);
                        break;
                    case "mario":
                        mario.GetComponent<Rigidbody>().position = new Vector3(-11546, 8654, -5790);
                        mario.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-90, 180, -90);
                        break;
                    case "batman":
                        batman.GetComponent<Rigidbody>().position = new Vector3(-11564, 8564, -5791);
                        batman.GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, -90, 0);
                        break;
                    case "naruto":
                        naruto.GetComponent<Rigidbody>().position = new Vector3(-11560, 8561, -5772);
                        naruto.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-90, -90, 0);
                        break;
                }
            }
        }

    }

    // Use this for initialization
    void Start()
    {
        //Camera Setting
        CameraGame.SetActive(false);
        CameraStart.SetActive(false);
        CameraShowDice.SetActive(false);
        CameraSelectPlayer.SetActive(false);
        CameraEndGame.SetActive(false);
        CameraMenu.SetActive(true);
        

        currentBetTxt.SetActive(false);
        currentDice.SetActive(false);

        //Parameters Setting

        dragonFly.SetActive(false);
        goku.SetActive(false);
        winner.SetActive(false);

        stayClose = false;
        messageIndex = 0;
        turno = -1;
        dx = false;
        sx = false;
        ok = false;
        entraInStartGame = false;
        blockAddRem = false;

        inizializzaTavola = false;
        waitNumberOfDice = false;
        waitNumberOfPlayers = false;
        waitIndexPlayer = false;
        waitAllDice = false;
        indiceGiocatore = 0;
        indiceDado = 1;
        numeroGiocatori = 0;
        waitTurn = false;
        waitBet = false;
        waitRepetition = false;
        dubito = false;
        fase2 = false;
        Selected = false;
        index = 0;
        counter = 0;
        dadoBet.SetActive(false);
        haPerso = -1;
        haDubitato = -1;
        waitShow = false;
        currentRepetition = -1;

        for (int i = 1; i <= 6; i++) //ad esempio totPerDice[1]=22 indica che son usciti 22 dadi col valore 1.
        {
            totPerDice[i] = 0;
        }
        
        for(int i =0; i< players.Length; i++)
        {
            players[i] = "";
        }

    }

    // Update is called once per frame
    void Update()
    {
        //*************************************_________SOLO PER LE PROVE_________***************************************************
        
        if (Input.GetKeyDown("a")) //sinistra-rimuovi-decrementa
        {
            SoundManagerScript.PlaySound("sxDx");
            sx = true;
        }
        if (Input.GetKeyDown("d"))//destra-aggiungi-incrementa
        {
            SoundManagerScript.PlaySound("sxDx");
            dx = true;
        }
        if (Input.GetKeyDown("o")) // conferma
        {
            SoundManagerScript.PlaySound("ok");
            ok = true;
        }

        if (Input.GetKeyDown("p"))
        {
            dragonFly.SetActive(false);
            goku.SetActive(false);
            StringBuilder sbProva = new StringBuilder();
            for (int i = 0; i < players.Length; i++)
            {
                sbProva.Append(players[i] + " ");
            }
            Debug.Log( "gicoatori:" + sbProva.ToString());
            haDubitato = 0;
            haPerso = 0;
            numeroGiocatori = 7;
        }

        if (Input.GetKeyDown("c")) 
        {
            closeMenu = true;
        }

        if (Input.GetKeyDown("f"))
        {
            CameraSelectPlayer.SetActive(false);
            CameraMenu.SetActive(false);
            CameraGame.SetActive(false);
            CameraShowDice.SetActive(false);
            haPerso = 4;
            players[0] = "mario";
            CameraEndGame.SetActive(true);
            if (haPerso == 0)
            {
                gameOverTxt.SetActive(true);
                winnerTarget.GetComponent<TextMesh>().text = "Non tu!";
                SoundManagerScript.PlaySound("gameOver");
                SoundManagerScript.PlaySound("boo");
            }
            else
            {
                winnerTarget.GetComponent<TextMesh>().text = players[0];
                victoryEffect.SetActive(true);
                SoundManagerScript.PlaySound("victory");
                SoundManagerScript.PlaySound("applause");
                switch (players[0])
                {
                    case "majinBu":
                        majinBu.GetComponent<Rigidbody>().position = new Vector3(-11575, 8565, -5785);
                        majinBu.GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, -90, 0);
                        break;
                    case "laraCroft":
                        laraCroft.GetComponent<Rigidbody>().position = new Vector3(-11578, 8687, -5786);
                        laraCroft.GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, -90, 0);
                        break;
                    case "yoshi":
                        yoshi.GetComponent<Rigidbody>().position = new Vector3(-11453, 7693, -5819);
                        yoshi.GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, 105, 0);
                        break;
                    case "ironman":
                        ironman.GetComponent<Rigidbody>().position = new Vector3(-11568, 8564, -5795);
                        ironman.GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, -90, 0);
                        break;
                    case "elfo":
                        elfo.GetComponent<Rigidbody>().position = new Vector3(-11564, 8564, -5779);
                        elfo.GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, -90, 0);
                        break;
                    case "mario":
                        mario.GetComponent<Rigidbody>().position = new Vector3(-11546, 8654, -5790);
                        mario.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-90, 180, -90);
                        break;
                    case "batman":
                        batman.GetComponent<Rigidbody>().position = new Vector3(-11564, 8564, -5791);
                        batman.GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, -90, 0);
                        break;
                    case "naruto":
                        naruto.GetComponent<Rigidbody>().position = new Vector3(-11560, 8561, -5772);
                        naruto.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-90, -90, 0);
                        break;
                }
            }
        }



        //**************************************************************************************************************************


        if (closeMenu && !stayClose) //appena stayClose -> true, qui dentro non entro più
        {
            closeMenu = false;
            stayClose = true;
            CameraSelectPlayer.SetActive(true);
            CameraMenu.SetActive(false);
            dragonFly.SetActive(true);
            goku.SetActive(true);
        }

        if (ok & !Selected)  //tasto per indicare che si sta confermando la scelta del personaggio.
        {
            Selected = true;
            CameraGame.SetActive(true);
            CameraSelectPlayer.SetActive(false);
            ok = false;
        }
        if (!Selected)
            SelectPlayer();
        else if (!blockAddRem) //personaggio scelto, (l'index ora corrisponde all'indice del personaggio scelto). aggiungo gli altri al tavolo
        {
            if (counter == 0)//di default 1 personaggio.
                StartPos();
            else
                AddPlayer();
            RemovePlayer();
        }

        if (entraInStartGame & Selected) //scelto il numero di personaggi al tavolo, ricevo dalla seriale tutti i dadi e iniziano le scommesse
        {
            CameraGame.SetActive(false);
            CameraShowDice.SetActive(false);
            CameraStart.SetActive(true);
            showDiceTxt.SetActive(false);
            betResultTxt.SetActive(false);
            StartGame();
            entraInStartGame = false;
            blockAddRem = true;


            //stop alle animazioni
            dragonFly.SetActive(false);
            goku.SetActive(false);
            barman.GetComponent<Animation>().Stop();
        }

        if (turno == 0 && betphase || turno > 0 && dadoScommesso > 0 && ricorrenzaScommessa > 0 && betphase || turno > 0 && dubito && betphase) //turno del giocatore
        {
            int[] temp = new int[2];
            if (turno == 0 && dadoScommesso == 0) //mio turno e non ho ancora mai incrementato il dado da scommettere
                dadoScommesso = 1;
            if (turno == 0 && ricorrenzaScommessa == 0)//mio turno e non ho ancora mai incrementato la ricorrenza da scommettere
                ricorrenzaScommessa = 1;

            temp = Turn(turno, dadoScommesso, ricorrenzaScommessa, dubito);
            dadoScommesso = temp[0];
            ricorrenzaScommessa = temp[1];
            if (turno > 0)
                turno = -1;
        }
        if (haPerso >= 0 && haDubitato >=0)
        {
            SecondTxt.SetActive(false); ThirdTxt.SetActive(false); FourthTxt.SetActive(false); FifthTxt.SetActive(false);
            SixthTxt.SetActive(false); SeventhTxt.SetActive(false); EighthTxt.SetActive(false);

            myDice1.SetActive(false);
            myDice2.SetActive(false);
            myDice3.SetActive(false);
            myDice4.SetActive(false);
            myDice5.SetActive(false);

            ricorrenzaBet.SetActive(false); FirstTxt.SetActive(false);
            CameraStart.SetActive(false);
            propriDadi.SetActive(false);
            CameraShowDice.SetActive(true);
            showDiceTxt.SetActive(true);
            betResultTxt.SetActive(true);
            glass1.transform.position = new Vector3(-12346.2f, 8663.9f, -6157.5f);
            glass2.transform.position = new Vector3(-12353f, 8663.9f, -6124.2f);
            glass3.transform.position = new Vector3(-12382.2f, 8663.9f, -6106.2f);
            glass4.transform.position = new Vector3(-12417.1f, 8663.9f, -6100.7f);
            glass5.transform.position = new Vector3(-12441.7f, 8663.9f, -6122.3f);
            glass6.transform.position = new Vector3(-12439.2f, 8663.9f, -6156.2f);
            glass7.transform.position = new Vector3(-12409.7f, 8663.9f, -6177.7f);
            glass8.transform.position = new Vector3(-12374f, 8663.9f, -6181f);

            Behaviour bglass1 = glass1.GetComponent<Behaviour>();
            Behaviour bglass2 = glass2.GetComponent<Behaviour>();
            Behaviour bglass3 = glass3.GetComponent<Behaviour>();
            Behaviour bglass4 = glass4.GetComponent<Behaviour>();
            Behaviour bglass5 = glass5.GetComponent<Behaviour>();
            Behaviour bglass6 = glass6.GetComponent<Behaviour>();
            Behaviour bglass7 = glass7.GetComponent<Behaviour>();
            Behaviour bglass8 = glass8.GetComponent<Behaviour>();

            bglass1.enabled = false; bglass2.enabled = false; bglass3.enabled = false; bglass4.enabled = false;
            bglass5.enabled = false; bglass6.enabled = false; bglass7.enabled = false; bglass8.enabled = false;

            Material winnerMat;

            if (haDubitato != haPerso)
            {// il dubitatore ha vinto.
                SoundManagerScript.PlaySound(players[haDubitato]);
                winnerMat = Resources.Load(players[haDubitato], typeof(Material)) as Material;
                if (haPerso == 0)
                {
                    if (numeroDadi[haPerso] == 1)
                        betResultTxt.GetComponent<TextMesh>().text = "Hai perso la scommessa\ncontro " + players[haDubitato] + ".\nEra il tuo ultimo dado!\n";
                    else
                        betResultTxt.GetComponent<TextMesh>().text = "Hai perso la scommessa\ncontro " + players[haDubitato] + ".\nPerdi un dado!\n";
                }
                else
                {
                    if (numeroDadi[haPerso] == 1) 
                    { 
                        betResultTxt.GetComponent<TextMesh>().text = players[haPerso] + " ha perso la\n scommessa contro " + players[haDubitato] + " e\n ha finito tutti i dadi!\n" + players[haPerso] + " e' stato eliminato!";
                        players[haPerso] = "";
                    }
                    else
                        betResultTxt.GetComponent<TextMesh>().text = players[haPerso] + " ha perso la\nscommessa contro " + players[haDubitato] + ".\n" + players[haPerso] + " perde un dado!\n";                    
                }
            }
            else //haDubitato == haPerso -> chi precede il dubitatore ha vinto.
            {
                if (haDubitato == 0)
                {
                    String lastPlayer="";//l'ultimo giocatore in campo è il predecessore del gicoatore 0, e ha vinto.
                    int lastIndex = numeroGiocatori -1;
                    while (String.IsNullOrEmpty(lastPlayer))
                    {
                        if (String.IsNullOrEmpty(players[lastIndex]))
                            lastIndex--;
                        else
                            lastPlayer = players[lastIndex];
                    }
                    SoundManagerScript.PlaySound(players[lastIndex]); 
                    winnerMat = Resources.Load(players[lastIndex], typeof(Material)) as Material;
                    if (numeroDadi[haPerso] == 1)
                        betResultTxt.GetComponent<TextMesh>().text = "Hai dubitato e\nhai perso la scommessa\ncontro " + players[lastIndex] + ".\nEra il tuo ultimo dado!\n";
                    else
                        betResultTxt.GetComponent<TextMesh>().text = "Hai dubitato e\nhai perso la scommessa\ncontro " + players[lastIndex] + ".\nPerdi un dado!\n";
                }
                else
                {
                    String prevPlayer = "";
                    int prevIndex = haDubitato - 1;
                    while (String.IsNullOrEmpty(prevPlayer))
                    {
                        if (String.IsNullOrEmpty(players[prevIndex]))
                            prevIndex--;
                        else
                            prevPlayer = players[prevIndex];
                    }
                    SoundManagerScript.PlaySound(players[prevIndex]); //il predecessore del dubitatore ha vinto.
                    winnerMat = Resources.Load(players[prevIndex], typeof(Material)) as Material;
                    if (numeroDadi[haPerso] == 1)
                    {
                        betResultTxt.GetComponent<TextMesh>().text = players[haPerso] + " ha perso la\nscommessa contro " + players[prevIndex] + " e\n ha finito tutti i dadi!\n" + players[haPerso] + " e' stato eliminato!";
                        players[haPerso] = "";
                    }
                    else
                        betResultTxt.GetComponent<TextMesh>().text = players[haPerso] + " ha perso la\nscommessa contro " + players[prevIndex] + ".\n" + players[haPerso] + " perde un dado!\n";

                }
            }
            winner.SetActive(true);
            winner.GetComponent<Renderer>().material = winnerMat;

            //Debug per constatare l'ultima modifica
            StringBuilder sbProva = new StringBuilder();
            for (int i = 0; i < players.Length; i++)
            {
                sbProva.Append(players[i] + " ");
            }
            Debug.Log("gicoatori in campo nel prossimo round: " + sbProva.ToString());
            //

            //da qui in poi per sommare i dadi totali usciti da mostrare.
            StringBuilder stb = new StringBuilder();
            for (int i = 0; i < numeroGiocatori; i++)
            {

                for (int k = 1; k <= numeroDadi[i]; k++) //k è l'indice del dado. Va da 1 al num di dadi del gicoatore i-esimo.
                {
                    for (int z = 1; z <= 6; z++) // z è il valore del dado, da 1 a 6.
                    {
                        if (dadiUsciti[i, k] == z)
                            totPerDice[z] = totPerDice[z] + 1;
                    }
                }

                switch (i)
                {
                    case 0:
                        for (int j = 1; j <= numeroDadi[i]; j++) //j è l'indice del dado. da 1 al num di dadi del gicoatore i-esimo.
                        {
                            if (j == 1) //da qui in poi per aggiornare i valori dei dadi.
                                dado11.GetComponent<DadoNew>().PosizionaDado( dadiUsciti[i, j]);
                            if (j == 2)
                                dado21.GetComponent<DadoNew>().PosizionaDado(dadiUsciti[i, j]);
                            if (j == 3)
                                dado31.GetComponent<DadoNew>().PosizionaDado(dadiUsciti[i, j]);
                            if (j == 4)
                                dado41.GetComponent<DadoNew>().PosizionaDado(dadiUsciti[i, j]);
                            if (j == 5)
                                dado51.GetComponent<DadoNew>().PosizionaDado(dadiUsciti[i, j]);
                        }
                        break;
                    case 1:
                        for (int j = 1; j <= numeroDadi[i]; j++)
                        {
                            if (j == 1)
                                dado12.GetComponent<DadoNew>().PosizionaDado(dadiUsciti[i, j]);
                            if (j == 2)
                                dado22.GetComponent<DadoNew>().PosizionaDado(dadiUsciti[i, j]);
                            if (j == 3)
                                dado32.GetComponent<DadoNew>().PosizionaDado(dadiUsciti[i, j]);
                            if (j == 4)
                                dado42.GetComponent<DadoNew>().PosizionaDado(dadiUsciti[i, j]);
                            if (j == 5)
                                dado52.GetComponent<DadoNew>().PosizionaDado(dadiUsciti[i, j]);
                        }
                        break;
                    case 2:
                        for (int j = 1; j <= numeroDadi[i]; j++)
                        {
                            if (j == 1)
                                dado13.GetComponent<DadoNew>().PosizionaDado(dadiUsciti[i, j]);
                            if (j == 2)
                                dado23.GetComponent<DadoNew>().PosizionaDado(dadiUsciti[i, j]);
                            if (j == 3)
                                dado33.GetComponent<DadoNew>().PosizionaDado(dadiUsciti[i, j]);
                            if (j == 4)
                                dado43.GetComponent<DadoNew>().PosizionaDado(dadiUsciti[i, j]);
                            if (j == 5)
                                dado53.GetComponent<DadoNew>().PosizionaDado(dadiUsciti[i, j]);
                        }
                        break;
                    case 3:
                        for (int j = 1; j <= numeroDadi[i]; j++)
                        {
                            if (j == 1)
                                dado14.GetComponent<DadoNew>().PosizionaDado(dadiUsciti[i, j]);
                            if (j == 2)
                                dado24.GetComponent<DadoNew>().PosizionaDado(dadiUsciti[i, j]);
                            if (j == 3)
                                dado34.GetComponent<DadoNew>().PosizionaDado(dadiUsciti[i, j]);
                            if (j == 4)
                                dado44.GetComponent<DadoNew>().PosizionaDado(dadiUsciti[i, j]);
                            if (j == 5)
                                dado54.GetComponent<DadoNew>().PosizionaDado(dadiUsciti[i, j]);
                        }
                        break;
                    case 4:
                        for (int j = 1; j <= numeroDadi[i]; j++)
                        {
                            if (j == 1)
                                dado15.GetComponent<DadoNew>().PosizionaDado(dadiUsciti[i, j]);
                            if (j == 2)
                                dado25.GetComponent<DadoNew>().PosizionaDado(dadiUsciti[i, j]);
                            if (j == 3)
                                dado35.GetComponent<DadoNew>().PosizionaDado(dadiUsciti[i, j]);
                            if (j == 4)
                                dado45.GetComponent<DadoNew>().PosizionaDado(dadiUsciti[i, j]);
                            if (j == 5)
                                dado55.GetComponent<DadoNew>().PosizionaDado(dadiUsciti[i, j]);
                        }
                        break;
                    case 5:
                        for (int j = 1; j <= numeroDadi[i]; j++)
                        {
                            if (j == 1)
                                dado16.GetComponent<DadoNew>().PosizionaDado(dadiUsciti[i, j]);
                            if (j == 2)
                                dado26.GetComponent<DadoNew>().PosizionaDado(dadiUsciti[i, j]);
                            if (j == 3)
                                dado36.GetComponent<DadoNew>().PosizionaDado(dadiUsciti[i, j]);
                            if (j == 4)
                                dado46.GetComponent<DadoNew>().PosizionaDado(dadiUsciti[i, j]);
                            if (j == 5)
                                dado56.GetComponent<DadoNew>().PosizionaDado(dadiUsciti[i, j]);
                        }
                        break;
                    case 6:
                        for (int j = 1; j <= numeroDadi[i]; j++)
                        {
                            if (j == 1)
                                dado17.GetComponent<DadoNew>().PosizionaDado(dadiUsciti[i, j]);
                            if (j == 2)
                                dado27.GetComponent<DadoNew>().PosizionaDado(dadiUsciti[i, j]);
                            if (j == 3)
                                dado37.GetComponent<DadoNew>().PosizionaDado(dadiUsciti[i, j]);
                            if (j == 4)
                                dado47.GetComponent<DadoNew>().PosizionaDado(dadiUsciti[i, j]);
                            if (j == 5)
                                dado57.GetComponent<DadoNew>().PosizionaDado(dadiUsciti[i, j]);
                        }
                        break;
                    case 7:
                        for (int j = 1; j <= numeroDadi[i]; j++)
                        {
                            if (j == 1)
                                dado18.GetComponent<DadoNew>().PosizionaDado(dadiUsciti[i, j]);
                            if (j == 2)
                                dado28.GetComponent<DadoNew>().PosizionaDado(dadiUsciti[i, j]);
                            if (j == 3)
                                dado38.GetComponent<DadoNew>().PosizionaDado(dadiUsciti[i, j]);
                            if (j == 4)
                                dado48.GetComponent<DadoNew>().PosizionaDado(dadiUsciti[i, j]);
                            if (j == 5)
                                dado58.GetComponent<DadoNew>().PosizionaDado(dadiUsciti[i, j]);
                        }
                        break;
                }

            }

            stb.Append("Dadi usciti:\n");
            for (int x = 1; x < totPerDice.Length; x++)
            {
                stb.Append(x + " x " + totPerDice[x] + "\n");
            }
            showDiceTxt.GetComponent<TextMesh>().text = stb.ToString();
            //haPerso = -1;
            haDubitato = -1;
            
        }
    }

    private int[] Turn(int turno, int dado, int ricorrenza, bool dubito)
    {
        int[] dadoRic = new int[2];
        SecondTxt.SetActive(false); ThirdTxt.SetActive(false); FourthTxt.SetActive(false); FifthTxt.SetActive(false);
        SixthTxt.SetActive(false); SeventhTxt.SetActive(false); EighthTxt.SetActive(false);
        ricorrenzaBet.SetActive(false); FirstTxt.SetActive(false);
        if (turno != 0)
        {
            currentBetTxt.SetActive(true);
            currentDice.SetActive(true);
        }

        dadoBet1.SetActive(false); dadoBet2.SetActive(false); dadoBet3.SetActive(false); dadoBet4.SetActive(false);
        dadoBet5.SetActive(false); dadoBet6.SetActive(false); dadoBet7.SetActive(false);


        dadoRic[0] = dado;
        dadoRic[1] = ricorrenza;

        switch (turno)
        {
            case 0: //majinBu turn : bet
                if (!dadoBet.activeInHierarchy)
                    dadoBet.SetActive(true);
                FirstTxt.SetActive(true);
                if (dubito)
                {
                    FirstTxt.GetComponent<TextMesh>().text = "Hai dubitato! \n";
                    propriDadi.SetActive(false);
                    dadoBet.SetActive(false);
                    haDubitato = turno;
                    turno = -1;
                    myDice1.SetActive(false);
                    myDice2.SetActive(false);
                    myDice3.SetActive(false);
                    myDice4.SetActive(false);
                    myDice5.SetActive(false);
                }
                else
                {
                    if (dx && !fase2)
                    {
                        if(dado<6)
                            dado++;
                        dx = false;
                    }
                    else if (dx && fase2)
                    {
                        if(ricorrenza<40)
                            ricorrenza++;
                        dx = false;
                    }
                    else if (sx && !fase2)
                    {
                        if(dado>1)
                            dado--;
                        sx = false;
                    }
                    else if (sx && fase2)
                    {
                        if(ricorrenza>1)
                            ricorrenza--;
                        sx = false;
                    }
                    else if (ok && !fase2) //confermo il dado.
                    {
                        fase2 = true;
                        ok = false;
                        Debug.Log("confermato dado!!");
                    }
                    else if (ok && fase2) //confermata la ricorrenza, esco.
                    {
                        turno = -1;
                        fase2 = false;
                        currentDice.SetActive(true);
                        currentBetTxt.SetActive(true);
                        currentBetTxt.GetComponent<TextMesh>().text = "Scommessa corrente:      X" + ricorrenza;
                        currentDice.GetComponent<DadoNew>().PosizionaDado(dado);
                        SoundManagerScript.PlaySound("ok");
                        ok = false;
                        currentRepetition = ricorrenza;
                        Debug.Log("confermato ricorrenza!!");
                    }

                    dadoBet.GetComponent<DadoNew>().PosizionaDado(dado);
                    ricorrenzaBet.SetActive(true);
                    FirstTxt.GetComponent<TextMesh>().text = "Scommetti: \n";
                    ricorrenzaBet.GetComponent<TextMesh>().text = "X " + ricorrenza.ToString();
                    dadoRic[0] = dado;
                    dadoRic[1] = ricorrenza;
                }
                break;
            case 1: //ironman player
                dadoBet.SetActive(false);
                SecondTxt.SetActive(true);
                if (dubito)
                {
                    SecondTxt.GetComponent<TextMesh>().text = players[turno] + " ha dubitato! \n";
                    haDubitato = turno;
                } 
                else
                {
                    SecondTxt.GetComponent<TextMesh>().text = players[turno] + " scommette\n\n  X " + ricorrenza.ToString();
                    dadoBet1.SetActive(true);
                    dadoBet1.GetComponent<DadoNew>().PosizionaDado(dado);
                }
                if (fase2)// questo perchè ogni tanto non viene inviata correttamente la conferma della ricorrenza del turno 0.
                    fase2 = false;
                break;
            case 2: //mario player
                dadoBet.SetActive(false);
                ThirdTxt.SetActive(true);
                if (dubito)
                {
                    haDubitato = turno;
                    ThirdTxt.GetComponent<TextMesh>().text = players[turno] + " ha dubitato! \n";
                }
                else
                {
                    ThirdTxt.GetComponent<TextMesh>().text = players[turno] + " scommette\n\n  X " + ricorrenza.ToString();
                    dadoBet2.SetActive(true);
                    dadoBet2.GetComponent<DadoNew>().PosizionaDado(dado);
                }
                if (fase2)// questo perchè ogni tanto non viene inviata correttamente la conferma della ricorrenza del turno 0.
                    fase2 = false;
                break;
            case 3://laraCroft player
                dadoBet.SetActive(false);
                FourthTxt.SetActive(true);
                if (dubito)
                {
                    haDubitato = turno;
                    FourthTxt.GetComponent<TextMesh>().text = players[turno] + " ha dubitato! \n";
                }
                else
                {
                    FourthTxt.GetComponent<TextMesh>().text = players[turno] + " scommette\n\n  X " + ricorrenza.ToString();
                    dadoBet3.SetActive(true);
                    dadoBet3.GetComponent<DadoNew>().PosizionaDado(dado);
                }
                if (fase2)// questo perchè ogni tanto non viene inviata correttamente la conferma della ricorrenza del turno 0.
                    fase2 = false;
                break;
            case 4: //naruto player
                dadoBet.SetActive(false);
                FifthTxt.SetActive(true);
                if (dubito)
                {
                    haDubitato = turno;
                    FifthTxt.GetComponent<TextMesh>().text = players[turno] + " ha dubitato! \n";
                }
                else
                {
                    FifthTxt.GetComponent<TextMesh>().text = players[turno] + " scommette\n\n  X " + ricorrenza.ToString();
                    dadoBet4.SetActive(true);
                    dadoBet4.GetComponent<DadoNew>().PosizionaDado(dado);
                }
                if (fase2)// questo perchè ogni tanto non viene inviata correttamente la conferma della ricorrenza del turno 0.
                    fase2 = false;
                break;
            case 5://elfo player
                dadoBet.SetActive(false);
                SixthTxt.SetActive(true);
                if (dubito)
                {
                    haDubitato = turno;
                    SixthTxt.GetComponent<TextMesh>().text = players[turno] + " ha dubitato! \n";
                }
                else
                {
                    SixthTxt.GetComponent<TextMesh>().text = players[turno] + " scommette\n\n  X " + ricorrenza.ToString();
                    dadoBet5.SetActive(true);
                    dadoBet5.GetComponent<DadoNew>().PosizionaDado(dado);
                }
                if (fase2)// questo perchè ogni tanto non viene inviata correttamente la conferma della ricorrenza del turno 0.
                    fase2 = false;
                break;
            case 6: //batman player
                dadoBet.SetActive(false);
                SeventhTxt.SetActive(true);
                if (dubito)
                {
                    haDubitato = turno;
                    SeventhTxt.GetComponent<TextMesh>().text = players[turno] + " ha dubitato! \n";
                }
                else
                {
                    SeventhTxt.GetComponent<TextMesh>().text = players[turno] + " scommette\n\n  X " + ricorrenza.ToString();
                    dadoBet6.SetActive(true);
                    dadoBet6.GetComponent<DadoNew>().PosizionaDado(dado);
                }
                if (fase2)// questo perchè ogni tanto non viene inviata correttamente la conferma della ricorrenza del turno 0.
                    fase2 = false;
                break;
            case 7://eight player
                dadoBet.SetActive(false);
                EighthTxt.SetActive(true);
                if (dubito)
                {
                    haDubitato = turno;
                    EighthTxt.GetComponent<TextMesh>().text = players[turno] + " ha dubitato! \n";
                }
                else
                {
                    EighthTxt.GetComponent<TextMesh>().text = players[turno] + " scommette\n\n  X " + ricorrenza.ToString();
                    dadoBet7.SetActive(true);
                    dadoBet7.GetComponent<DadoNew>().PosizionaDado(dado);
                }
                if (fase2)// questo perchè ogni tanto non viene inviata correttamente la conferma della ricorrenza del turno 0.
                    fase2 = false;
                break;
        }
        if (turno > 0 && currentRepetition>0) //currentRepetition>0 perchè se parte il turno 1 e dubita subito, non si deve mostrare.
        {
            currentBetTxt.GetComponent<TextMesh>().text = "Scommessa corrente:      X" + currentRepetition;
            currentDice.GetComponent<DadoNew>().PosizionaDado(dado);
        }
        return dadoRic;
    }

    private void SelectPlayer()
    {
        if (dx & index < 7)
        { // freccetta destra/ prossimo personaggio
            index++;
            switch (index)
            {
                case 1: //majinBu->ironman
                    majinBu.GetComponent<Rigidbody>().position = new Vector3(-13687, 9005, -5804);
                    majinBu.GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, 98, 0);
                    ironman.GetComponent<Rigidbody>().position = new Vector3(-12056, 8523, -6181);  //StartPos
                    ironman.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-3, 160, -1);
                    
                    break;
                case 2: //ironman->mario
                    ironman.GetComponent<Rigidbody>().position = new Vector3(-12120, 8585, -5012);
                    ironman.GetComponent<Rigidbody>().rotation = Quaternion.Euler(5, -135, 1);
                    mario.GetComponent<Rigidbody>().position = new Vector3(-12063, 8616, -6160);//StartPos
                    mario.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-90, 180, -201);
                    
                    break;
                case 3: // mario-> laraCroft
                    mario.GetComponent<Rigidbody>().position = new Vector3(-13200, 8608, -5413);
                    mario.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-90, 180, -176);
                    laraCroft.GetComponent<Rigidbody>().position = new Vector3(-12055, 8645, -6188);//StartPos
                    laraCroft.GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, -203, 1);
                    
                    break;
                case 4: // laraCroft-> naruto
                    laraCroft.GetComponent<Rigidbody>().position = new Vector3(-12263, 8702, -5106);
                    laraCroft.GetComponent<Rigidbody>().rotation = Quaternion.Euler(1, -244, 1);
                    naruto.GetComponent<Rigidbody>().position = new Vector3(-12060, 8521, -6184);//StartPos
                    naruto.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-90, -90, 255);
                   
                    break;
                case 5: // naruto -> elfo
                    naruto.GetComponent<Rigidbody>().position = new Vector3(-12847, 8521, -6375);
                    naruto.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-90, 0, -19);
                    elfo.GetComponent<Rigidbody>().position = new Vector3(-12052, 8527, -6203);//StartPos
                    elfo.GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, 158, 0);
                    
                    break;
                case 6: // elfo -> batman
                    elfo.GetComponent<Rigidbody>().position = new Vector3(-13246, 8516, -5524);
                    elfo.GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, 10, 0);
                    batman.GetComponent<Rigidbody>().position = new Vector3(-12041, 8529, -6183);//StartPos
                    batman.GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, 155, 0);
                    
                    break;
                case 7: // batman -> yoshi
                    batman.GetComponent<Rigidbody>().position = new Vector3(-12874, 8527, -6257);
                    batman.GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, 158, 0);
                    yoshi.GetComponent<Rigidbody>().position = new Vector3(-12119, 7659, -6127);//StartPos
                    yoshi.GetComponent<Rigidbody>().rotation = Quaternion.Euler(2, 353, -3);
                    
                    break;
            }
            dx = false;
        }
        else if (sx & index > 0)
        { // freccetta sinistra/ precedente personaggio
            
            index--;
            
            switch (index)
            {
                case 0: //ironman->majinBu
                    ironman.GetComponent<Rigidbody>().position = new Vector3(-13687, 9005, -5804);
                    ironman.GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, 98, 0);
                    majinBu.GetComponent<Rigidbody>().position = new Vector3(-12066, 8525, -6176);
                    majinBu.GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, -200, 0);
                    break;
                case 1: //mario->ironman
                    mario.GetComponent<Rigidbody>().position = new Vector3(-12123, 8666, -4999);
                    mario.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-90, 180, -131);
                    ironman.GetComponent<Rigidbody>().position = new Vector3(-12056, 8523, -6181);  //StartPos
                    ironman.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-3, 160, -1);
                    break;
                case 2: //laraCroft->mario
                    laraCroft.GetComponent<Rigidbody>().position = new Vector3(-13191, 8635, -5439);
                    laraCroft.GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, -182, 0);
                    mario.GetComponent<Rigidbody>().position = new Vector3(-12063, 8616, -6160);//StartPos
                    mario.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-90, 180, -201);
                    break;
                case 3: //naruto->laraCroft
                    naruto.GetComponent<Rigidbody>().position = new Vector3(-12281, 8579, -5101);
                    naruto.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-90, 0, 116);
                    laraCroft.GetComponent<Rigidbody>().position = new Vector3(-12055, 8645, -6188);//StartPos
                    laraCroft.GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, -203, 1);
                    break;
                case 4:
                    elfo.GetComponent<Rigidbody>().position = new Vector3(-12828, 8527, -6366);
                    elfo.GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, -16, 0);
                    naruto.GetComponent<Rigidbody>().position = new Vector3(-12060, 8521, -6184);//StartPos
                    naruto.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-90, -90, 255);
                    break;
                case 5: //batman-> elfo
                    batman.GetComponent<Rigidbody>().position = new Vector3(-13246, 8516, -5524);
                    batman.GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, 10, 0);
                    elfo.GetComponent<Rigidbody>().position = new Vector3(-12041, 8527, -6187);//StartPos
                    elfo.GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, 155, 0);
                    break;
                case 6: //eight -> batman
                    yoshi.GetComponent<Rigidbody>().position = new Vector3(-12944, 7654, -6173);//StartPos
                    yoshi.GetComponent<Rigidbody>().rotation = Quaternion.Euler(2, 353, -3);
                    batman.GetComponent<Rigidbody>().position = new Vector3(-12041, 8529, -6183);//StartPos
                    batman.GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, 155, 0);
                    break;
            }
            sx = false;
        }

        switch (index) //per impostare il giocatore a capotavola.
        {
            case 0:
                players[0] = "majinBu";
                break;
            case 1:
                players[0] = "ironman";
                break;
            case 2:
                players[0] = "mario";
                break;
            case 3:
                players[0] = "laraCroft";
                break;
            case 4:
                players[0] = "naruto";
                break;
            case 5:
                players[0] = "elfo";
                break;
            case 6:
                players[0] = "batman";
                break;
            case 7:
                players[0] = "yoshi";
                break;
        }
        sx = false;
        dx = false;
    }


    private void StartPos()
    {
        { // es: ho scelto batman, al posto della posizione di batman metterò majinBu , il resto uguale.
            switch (index)
            {
                case 0: //majinBu (majinBu)
                    majinBu.GetComponent<Rigidbody>().position = new Vector3(-12127, 8523, -6251); //posGamer
                    majinBu.GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, -62, 0);
                    break;
                case 1: //ironman

                    ironman.GetComponent<Rigidbody>().position = new Vector3(-12110, 8530, -6239);//ironman prima pos
                    ironman.GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, 296, 0);
                    break;
                case 2: //mario

                    mario.GetComponent<Rigidbody>().position = new Vector3(-12113, 8628, -6240);//Mario prima pos
                    mario.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-90, 180, -72);
                    break;
                case 3: //laraCroft

                    laraCroft.GetComponent<Rigidbody>().position = new Vector3(-12137, 8648, -6247);//Lara prima pos
                    laraCroft.GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, -66, 0);
                    break;
                case 4: //naruto

                    naruto.GetComponent<Rigidbody>().position = new Vector3(-12118, 8507, -6257);//naruto prima pos
                    naruto.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-90, 0, 270);
                    break;
                case 5: //elfo

                    elfo.GetComponent<Rigidbody>().position = new Vector3(-12111, 8509, -6247);//posGamer
                    elfo.GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, -58, 0);
                    break;
                case 6: //batman

                    batman.GetComponent<Rigidbody>().position = new Vector3(-12121, 8524, -6253);//batman prima pos
                    batman.GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, -80, 0);
                    break;
                case 7: //yoshi

                    yoshi.GetComponent<Rigidbody>().position = new Vector3(-12008, 7686, -6180);//yoshi prima pos
                    yoshi.GetComponent<Rigidbody>().rotation = Quaternion.Euler(2, 108, -4);
                    break;
            }
            counter++;
        }
    }

    private void AddPlayer()
    {
        glass1.SetActive(true);

        if (dx & counter <= 7) //se arriva l'input di aggiunta personaggio 
        {
            //se il personaggio scelto è il primo (majinbu), nessun problema, aggiungo tutti i personaggi al tavolo in ordine.
            if (counter == index)
            { //se il personaggio scelto non è majinBu(majinbu), e arrivo alla ricorrenza, metto majinbu al posto di lui.
                players[counter] = "majinBu";
                switch (counter)
                {
                    case 1://majinBu al posto di ironman
                        majinBu.GetComponent<Rigidbody>().position = new Vector3(-12199, 8523, -6019); //maj seconda pos
                        majinBu.GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, 211, 0);
                        glass2.SetActive(true);
                        break;
                    case 2: //majinBu al posto di mario
                        majinBu.GetComponent<Rigidbody>().position = new Vector3(-12343, 8523, -5940);
                        majinBu.GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, -160, 0);
                        glass3.SetActive(true);
                        break;
                    case 3: //majinBu al posto di laraCroft
                        majinBu.GetComponent<Rigidbody>().position = new Vector3(-12536, 8523, -5895);
                        majinBu.GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, -168, 0);
                        glass4.SetActive(true);
                        break;
                    case 4://majinBu al posto di naruto
                        majinBu.GetComponent<Rigidbody>().position = new Vector3(-12696, 8523, -6019);
                        majinBu.GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, -245, 0);
                        glass5.SetActive(true);
                        break;
                    case 5: //majinBu al posto di elfo
                        majinBu.GetComponent<Rigidbody>().position = new Vector3(-12665, 8523, -6274);
                        majinBu.GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, 42, 0);
                        glass6.SetActive(true);
                        break;
                    case 6://majinBu al posto di batman
                        majinBu.GetComponent<Rigidbody>().position = new Vector3(-12467, 8523, -6336);//StartPos
                        majinBu.GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, -337, 0);
                        glass7.SetActive(true);
                        break;
                    case 7://majinBu al posto di yoshi
                        majinBu.GetComponent<Rigidbody>().position = new Vector3(-12366, 8523, -6382);//StartPos
                        majinBu.GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, -337, 0);
                        glass8.SetActive(true);
                        break;
                }
            }
            else
            {
                switch (counter)
                {
                    case 1: //ironman
                        ironman.GetComponent<Rigidbody>().position = new Vector3(-12174, 8530, -6034); //ironman seconda pos
                        ironman.GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, 215, 0);
                        glass2.SetActive(true);
                        players[counter] = "ironman";
                        break;
                    case 2: //mario
                        mario.GetComponent<Rigidbody>().position = new Vector3(-12360, 8616, -5918); //mario terza pos
                        mario.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-90, 180, -168);
                        glass3.SetActive(true);
                        players[counter] = "mario";
                        break;
                    case 3: //laraCroft

                        laraCroft.GetComponent<Rigidbody>().position = new Vector3(-12527, 8648, -5901); //lara quarta pos
                        laraCroft.GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, -172, 0);
                        glass4.SetActive(true);
                        players[counter] = "laraCroft";
                        break;
                    case 4: //naruto

                        naruto.GetComponent<Rigidbody>().position = new Vector3(-12685, 8525, -6042); //naruto quinta pos
                        naruto.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-90, 0, 117);
                        glass5.SetActive(true);
                        players[counter] = "naruto";
                        break;
                    case 5://elfo

                        elfo.GetComponent<Rigidbody>().position = new Vector3(-12656, 8527, -6269);
                        elfo.GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, 40, 0);
                        glass6.SetActive(true);
                        players[counter] = "elfo";
                        break;
                    case 6: //batman

                        batman.GetComponent<Rigidbody>().position = new Vector3(-12493, 8528, -6338);//batman settima pos
                        batman.GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, 9, 0);
                        glass7.SetActive(true);
                        players[counter] = "batman";
                        break;
                    case 7: //yoshi

                        yoshi.GetComponent<Rigidbody>().position = new Vector3(-12295, 7654, -6471);//yoshi ottava pos
                        yoshi.GetComponent<Rigidbody>().rotation = Quaternion.Euler(2, 182, -4);
                        glass8.SetActive(true);
                        players[counter] = "yoshi";
                        break;
                }
            }
            counter++;
            dx = false;
        }
    }
    private void RemovePlayer()
    {
        if (sx & counter > 1) //se arriva l'input di rimozione personaggio 
        {
            
            counter--;
            players[counter] = "";
            if (counter == index)
            { //se il personaggio scelto non è majinBu(majinbu), e arrivo alla ricorrenza, metto majinbu al posto di lui.
                majinBu.GetComponent<Rigidbody>().position = new Vector3(-11950, 8525, -6176);
                majinBu.GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, -199, 0);
            }

            switch (counter)
            {
                case 1://ironman
                    if (counter != index)
                    {
                        ironman.GetComponent<Rigidbody>().position = new Vector3(-13687, 9005, -5804); //rimuovo ironman
                        ironman.GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, 98, 0);
                    }
                    glass2.SetActive(false);
                    break;
                case 2: //mario
                    if (counter != index)
                    {
                        mario.GetComponent<Rigidbody>().position = new Vector3(-12123, 8666, -4999); //rimuovo mario
                        mario.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-90, 180, -131);
                    }
                    glass3.SetActive(false);
                    break;
                case 3: //laraCroft
                    if (counter != index)
                    {
                        laraCroft.GetComponent<Rigidbody>().position = new Vector3(-13191, 8635, -5439);//rimuovo lara
                        laraCroft.GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, -182, 0);
                    }
                    glass4.SetActive(false);
                    break;
                case 4: //naruto
                    if (counter != index)
                    {
                        naruto.GetComponent<Rigidbody>().position = new Vector3(-12281, 8579, -5101);//rimuovo naruto
                        naruto.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-90, 0, 117);
                    }
                    glass5.SetActive(false);
                    break;
                case 5://elfo
                    if (counter != index)
                    {
                        elfo.GetComponent<Rigidbody>().position = new Vector3(-12828, 8527, -6366);
                        elfo.GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, -16, 0);
                    }
                    glass6.SetActive(false);
                    break;
                case 6: //batman
                    if (counter != index)
                    {
                        batman.GetComponent<Rigidbody>().position = new Vector3(-13246, 8516, -5524);//rimuovo batman
                        batman.GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, 9, 0);
                    }
                    glass7.SetActive(false);
                    break;
                case 7: //yoshi
                    if (counter != index)
                    {
                        yoshi.GetComponent<Rigidbody>().position = new Vector3(-12944, 7654, -6173);//rimuovo yoshi
                        yoshi.GetComponent<Rigidbody>().rotation = Quaternion.Euler(2, 353, -3);
                    }
                    glass8.SetActive(false);
                    break;
            }
            sx = false;
        }
        sx = false;
        dx = false;
    }

    private void StartGame()
    {
        propriDadi.SetActive(true);
        SoundManagerScript.StopAllSounds();
        winner.SetActive(false);

        if (inizializzaTavola)
        {
            glass1.GetComponent<Rigidbody>().position = new Vector3(-12225, 8663.9f, -6207);
            glass2.GetComponent<Rigidbody>().position = new Vector3(-12272, 8663.9f, -6121);
            glass3.GetComponent<Rigidbody>().position = new Vector3(-12376, 8663.9f, -6082);
            glass4.GetComponent<Rigidbody>().position = new Vector3(-12507, 8663.9f, -6037);
            glass5.GetComponent<Rigidbody>().position = new Vector3(-12579, 8663.9f, -6078);
            glass6.GetComponent<Rigidbody>().position = new Vector3(-12551, 8663.9f, -6146);
            glass7.GetComponent<Rigidbody>().position = new Vector3(-12430, 8663.9f, -6197);
            glass8.GetComponent<Rigidbody>().position = new Vector3(-12312, 8663.9f, -6233);

            dadi1.SetActive(true); //non importa che siano tutti a true. essendo figli di glass, quando glass-i è disattivato, lo è anche il rispettivo dadi-i.
            dadi2.SetActive(true);
            dadi3.SetActive(true);
            dadi4.SetActive(true);
            dadi5.SetActive(true);
            dadi6.SetActive(true);
            dadi7.SetActive(true);
            dadi8.SetActive(true);


            myDice1.SetActive(true); myDice2.SetActive(true); myDice3.SetActive(true); myDice4.SetActive(true); myDice5.SetActive(true);

            for (int i = 0; i < counter; i++)   //counter è il numero totale dei giocatori che iniziano l'intera partita (subito dopo la selectPlayers).
            {
                if (numeroDadi[i] == 0)
                { //vuol dire che il personaggio i-esimo è stato eliminato.
                    switch (i)
                    {
                        case 0: //
                            glass1.SetActive(false);
                            dadi1.SetActive(false);
                            majinBu.SetActive(false);
                            break;
                        case 1: //
                            glass2.SetActive(false);
                            dadi2.SetActive(false);
                            ironman.SetActive(false);
                            break;
                        case 2: //
                            glass3.SetActive(false);
                            dadi3.SetActive(false);
                            mario.SetActive(false);
                            break;
                        case 3: //
                            glass4.SetActive(false);
                            dadi4.SetActive(false);
                            laraCroft.SetActive(false);
                            break;
                        case 4: //
                            glass5.SetActive(false);
                            dadi5.SetActive(false);
                            naruto.SetActive(false);
                            break;
                        case 5: //
                            glass6.SetActive(false);
                            dadi6.SetActive(false);
                            elfo.SetActive(false);
                            break;
                        case 6: //
                            glass7.SetActive(false);
                            dadi7.SetActive(false);
                            batman.SetActive(false);
                            break;
                        case 7: //
                            glass8.SetActive(false);
                            dadi8.SetActive(false);
                            yoshi.SetActive(false);
                            break;
                    }
                }
                for (int j = 1; j <= 5; j++)
                {
                    if (dadiUsciti[i, j] == 0) //esempio dadiUsciti[1,4]==0 -> devo togliere dal giocatore 1 il quarto e il quinto dado 
                    {
                        for (int k = j; k <= 5; k++)
                        {
                            switch (i)
                            {
                                case 0:
                                    switch (k)
                                    { //il caso 1 non c'è perchè dadiUsciti[1,1]==0 vuol dire che il giocatore 1 ha il dado1=0 cioè è stato eliminato.
                                        case 2:
                                            dado21.SetActive(false);
                                            myDice2.SetActive(false);
                                            break;
                                        case 3:
                                            dado31.SetActive(false);
                                            myDice3.SetActive(false);
                                            break;
                                        case 4:
                                            dado41.SetActive(false);
                                            myDice4.SetActive(false);
                                            break;
                                        case 5:
                                            dado51.SetActive(false);
                                            myDice5.SetActive(false);
                                            break;
                                    }
                                    break;
                                case 1:
                                    switch (k)
                                    { //il caso 1 non c'è perchè dadiUsciti[1,1]==0 vuol dire che il giocatore 1 ha il dado1=0 cioè è stato eliminato.
                                        case 2:
                                            dado22.SetActive(false);
                                            break;
                                        case 3:
                                            dado32.SetActive(false);
                                            break;
                                        case 4:
                                            dado42.SetActive(false);
                                            break;
                                        case 5:
                                            dado52.SetActive(false);
                                            break;
                                    }
                                    break;
                                case 2:
                                    switch (k)
                                    { //il caso 1 non c'è perchè dadiUsciti[1,1]==0 vuol dire che il giocatore 1 ha il dado1=0 cioè è stato eliminato.
                                        case 2:
                                            dado23.SetActive(false);
                                            break;
                                        case 3:
                                            dado33.SetActive(false);
                                            break;
                                        case 4:
                                            dado43.SetActive(false);
                                            break;
                                        case 5:
                                            dado53.SetActive(false);
                                            break;
                                    }
                                    break;
                                case 3:
                                    switch (k)
                                    { //il caso 1 non c'è perchè dadiUsciti[1,1]==0 vuol dire che il giocatore 1 ha il dado1=0 cioè è stato eliminato.
                                        case 2:
                                            dado24.SetActive(false);
                                            break;
                                        case 3:
                                            dado34.SetActive(false);
                                            break;
                                        case 4:
                                            dado44.SetActive(false);
                                            break;
                                        case 5:
                                            dado54.SetActive(false);
                                            break;
                                    }
                                    break;
                                case 4:
                                    switch (k)
                                    { //il caso 1 non c'è perchè dadiUsciti[1,1]==0 vuol dire che il giocatore 1 ha il dado1=0 cioè è stato eliminato.
                                        case 2:
                                            dado25.SetActive(false);
                                            break;
                                        case 3:
                                            dado35.SetActive(false);
                                            break;
                                        case 4:
                                            dado45.SetActive(false);
                                            break;
                                        case 5:
                                            dado55.SetActive(false);
                                            break;
                                    }
                                    break;
                                case 5:
                                    switch (k)
                                    { //il caso 1 non c'è perchè dadiUsciti[1,1]==0 vuol dire che il giocatore 1 ha il dado1=0 cioè è stato eliminato.
                                        case 2:
                                            dado26.SetActive(false);
                                            break;
                                        case 3:
                                            dado36.SetActive(false);
                                            break;
                                        case 4:
                                            dado46.SetActive(false);
                                            break;
                                        case 5:
                                            dado56.SetActive(false);
                                            break;
                                    }
                                    break;
                                case 6:
                                    switch (k)
                                    { //il caso 1 non c'è perchè dadiUsciti[1,1]==0 vuol dire che il giocatore 1 ha il dado1=0 cioè è stato eliminato.
                                        case 2:
                                            dado27.SetActive(false);
                                            break;
                                        case 3:
                                            dado37.SetActive(false);
                                            break;
                                        case 4:
                                            dado47.SetActive(false);
                                            break;
                                        case 5:
                                            dado57.SetActive(false);
                                            break;
                                    }
                                    break;
                                case 7:
                                    switch (k)
                                    { //il caso 1 non c'è perchè dadiUsciti[1,1]==0 vuol dire che il giocatore 1 ha il dado1=0 cioè è stato eliminato.
                                        case 2:
                                            dado28.SetActive(false);
                                            break;
                                        case 3:
                                            dado38.SetActive(false);
                                            break;
                                        case 4:
                                            dado48.SetActive(false);
                                            break;
                                        case 5:
                                            dado58.SetActive(false);
                                            break;
                                    }
                                    break;
                            }
                        }
                    }
                }
            }
            ThrowDice();

            propriDadi.GetComponent<TextMesh>().text = "I tuoi dadi: ";
            //ho gia settato a false i dadi del giocatore 0 che son stati eliminati, quindi posso assegnarli tranquillamente anche se non esistono.
            myDice1.GetComponent<DadoNew>().PosizionaDado( dadiUsciti[0, 1]);
            myDice2.GetComponent<DadoNew>().PosizionaDado(dadiUsciti[0, 2]);
            myDice3.GetComponent<DadoNew>().PosizionaDado(dadiUsciti[0, 3]);
            myDice4.GetComponent<DadoNew>().PosizionaDado(dadiUsciti[0, 4]);
            myDice5.GetComponent<DadoNew>().PosizionaDado(dadiUsciti[0, 5]);
            

            inizializzaTavola = false;
        }

    }
    private void ThrowDice()
    {

        glass1.GetComponentInChildren<dropDiceScript>().sound = true;
        
        //lancio i dadi1
        dado11.GetComponent<Rigidbody>().position = new Vector3(-12227.39f, 8685.634f, -6208.523f);
        dado11.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-43.89f, 60.578f, 85.622f);
        dado11.GetComponent<Rigidbody>().isKinematic = false;
        dado11.GetComponent<Rigidbody>().AddForce(Vector3.down * 50, ForceMode.Impulse);

        dado21.GetComponent<Rigidbody>().position = new Vector3(-12231.85f, 8690.139f, -6206.994f);
        dado21.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-43.89f, 60.578f, 85.622f);
        dado21.GetComponent<Rigidbody>().isKinematic = false;
        dado21.GetComponent<Rigidbody>().AddForce(Vector3.down * 50, ForceMode.Impulse);
        
        dado31.GetComponent<Rigidbody>().position = new Vector3(-12221.48f, 8686.647f, -6204.8f);
        dado31.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-43.89f, 60.578f, 85.622f);
        dado31.GetComponent<Rigidbody>().isKinematic = false;
        dado31.GetComponent<Rigidbody>().AddForce(Vector3.down * 50, ForceMode.Impulse);

        dado41.GetComponent<Rigidbody>().position = new Vector3(-12223.21f, 8685.184f, -6201.675f);
        dado41.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-43.89f, 60.578f, 85.622f);
        dado41.GetComponent<Rigidbody>().isKinematic = false;
        dado41.GetComponent<Rigidbody>().AddForce(Vector3.down * 50, ForceMode.Impulse);
        
        dado51.GetComponent<Rigidbody>().position = new Vector3(-12222.94f, 8685.972f, -6210.186f);
        dado51.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-43.89f, 60.578f, 85.622f);
        dado51.GetComponent<Rigidbody>().isKinematic = false;
        dado51.GetComponent<Rigidbody>().AddForce(Vector3.down * 50, ForceMode.Impulse);
        
        //lancio i dadi2
        dado12.GetComponent<Rigidbody>().position = new Vector3(-12273f, 8685.634f, -6122.862f);
        dado12.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-43.89f, 60.578f, 85.622f);
        dado12.GetComponent<Rigidbody>().isKinematic = false;
        dado12.GetComponent<Rigidbody>().AddForce(Vector3.down * 50, ForceMode.Impulse);
        
        dado22.GetComponent<Rigidbody>().position = new Vector3(-12278.45f, 8690.139f, -6121.333f);
        dado22.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-43.89f, 60.578f, 85.622f);
        dado22.GetComponent<Rigidbody>().isKinematic = false;
        dado22.GetComponent<Rigidbody>().AddForce(Vector3.down * 50, ForceMode.Impulse);
       
        dado32.GetComponent<Rigidbody>().position = new Vector3(-12268.08f, 8686.647f, -6119.138f);
        dado32.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-43.89f, 60.578f, 85.622f);
        dado32.GetComponent<Rigidbody>().isKinematic = false;
        dado32.GetComponent<Rigidbody>().AddForce(Vector3.down * 50, ForceMode.Impulse);

        dado42.GetComponent<Rigidbody>().position = new Vector3(-12269.81f, 8685.184f, -6116.014f);
        dado42.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-43.89f, 60.578f, 85.622f);
        dado42.GetComponent<Rigidbody>().isKinematic = false;
        dado42.GetComponent<Rigidbody>().AddForce(Vector3.down * 50, ForceMode.Impulse);
        
        dado52.GetComponent<Rigidbody>().position = new Vector3(-12269.54f, 8685.972f, -6124.524f);
        dado52.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-43.89f, 60.578f, 85.622f);
        dado52.GetComponent<Rigidbody>().isKinematic = false;
        dado52.GetComponent<Rigidbody>().AddForce(Vector3.down * 50, ForceMode.Impulse);
        
        //lancio i dadi3
        dado13.GetComponent<Rigidbody>().position = new Vector3(-12377.99f, 8685.634f, -6083.862f);
        dado13.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-43.89f, 60.578f, 85.622f);
        dado13.GetComponent<Rigidbody>().isKinematic = false;
        dado13.GetComponent<Rigidbody>().AddForce(Vector3.down * 50, ForceMode.Impulse);
        
        dado23.GetComponent<Rigidbody>().position = new Vector3(-12382.45f, 8690.139f, -6082.333f);
        dado23.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-43.89f, 60.578f, 85.622f);
        dado23.GetComponent<Rigidbody>().isKinematic = false;
        dado23.GetComponent<Rigidbody>().AddForce(Vector3.down * 50, ForceMode.Impulse);
       
        dado33.GetComponent<Rigidbody>().position = new Vector3(-12372.08f, 8686.647f, -6080.138f);
        dado33.GetComponent<Rigidbody>().AddForce(Vector3.down * 50, ForceMode.Impulse);
        dado33.GetComponent<Rigidbody>().isKinematic = false;
        dado33.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-43.89f, 60.578f, 85.622f);
       
        dado43.GetComponent<Rigidbody>().position = new Vector3(-12373.81f, 8685.184f, -6077.014f);
        dado43.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-43.89f, 60.578f, 85.622f);
        dado43.GetComponent<Rigidbody>().isKinematic = false;
        dado43.GetComponent<Rigidbody>().AddForce(Vector3.down * 50, ForceMode.Impulse);
        
        dado53.GetComponent<Rigidbody>().position = new Vector3(-12373.54f, 8685.972f, -6085.524f);
        dado53.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-43.89f, 60.578f, 85.622f);
        dado53.GetComponent<Rigidbody>().isKinematic = false;
        dado53.GetComponent<Rigidbody>().AddForce(Vector3.down * 50, ForceMode.Impulse);
       
        //lancio i dadi4
        dado14.GetComponent<Rigidbody>().position = new Vector3(-12508.99f, 8685.634f, -6038.862f);
        dado14.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-43.89f, 60.578f, 85.622f);
        dado14.GetComponent<Rigidbody>().isKinematic = false;
        dado14.GetComponent<Rigidbody>().AddForce(Vector3.down * 50, ForceMode.Impulse);
        
        dado24.GetComponent<Rigidbody>().position = new Vector3(-12513.45f, 8690.139f, -6037.333f);
        dado24.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-43.89f, 60.578f, 85.622f);
        dado24.GetComponent<Rigidbody>().isKinematic = false;
        dado24.GetComponent<Rigidbody>().AddForce(Vector3.down * 50, ForceMode.Impulse);
        
        dado34.GetComponent<Rigidbody>().position = new Vector3(-12503.08f, 8686.647f, -6035.138f);
        dado34.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-43.89f, 60.578f, 85.622f);
        dado34.GetComponent<Rigidbody>().isKinematic = false;
        dado34.GetComponent<Rigidbody>().AddForce(Vector3.down * 50, ForceMode.Impulse);
        
        dado44.GetComponent<Rigidbody>().position = new Vector3(-12504.81f, 8685.184f, -6032.014f);
        dado44.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-43.89f, 60.578f, 85.622f);
        dado44.GetComponent<Rigidbody>().isKinematic = false;
        dado44.GetComponent<Rigidbody>().AddForce(Vector3.down * 50, ForceMode.Impulse);
       
        dado54.GetComponent<Rigidbody>().position = new Vector3(-12504.54f, 8685.972f, -6040.524f);
        dado54.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-43.89f, 60.578f, 85.622f);
        dado54.GetComponent<Rigidbody>().isKinematic = false;
        dado54.GetComponent<Rigidbody>().AddForce(Vector3.down * 50, ForceMode.Impulse);
        
        //lancio i dadi5
        dado15.GetComponent<Rigidbody>().position = new Vector3(-12580.99f, 8685.634f, -6079.862f);
        dado15.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-43.89f, 60.578f, 85.622f);
        dado15.GetComponent<Rigidbody>().isKinematic = false;
        dado15.GetComponent<Rigidbody>().AddForce(Vector3.down * 50, ForceMode.Impulse);
        
        dado25.GetComponent<Rigidbody>().position = new Vector3(-12585.45f, 8690.139f, -6078.333f);
        dado25.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-43.89f, 60.578f, 85.622f);
        dado25.GetComponent<Rigidbody>().isKinematic = false;
        dado25.GetComponent<Rigidbody>().AddForce(Vector3.down * 50, ForceMode.Impulse);
        
        dado35.GetComponent<Rigidbody>().position = new Vector3(-12575.08f, 8686.647f, -6076.138f);
        dado35.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-43.89f, 60.578f, 85.622f);
        dado35.GetComponent<Rigidbody>().isKinematic = false;
        dado35.GetComponent<Rigidbody>().AddForce(Vector3.down * 50, ForceMode.Impulse);
       
        dado45.GetComponent<Rigidbody>().position = new Vector3(-12576.81f, 8685.184f, -6073.014f);
        dado45.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-43.89f, 60.578f, 85.622f);
        dado45.GetComponent<Rigidbody>().isKinematic = false;
        dado45.GetComponent<Rigidbody>().AddForce(Vector3.down * 50, ForceMode.Impulse);
        
        dado55.GetComponent<Rigidbody>().position = new Vector3(-12576.54f, 8685.972f, -6081.524f);
        dado55.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-43.89f, 60.578f, 85.622f);
        dado55.GetComponent<Rigidbody>().isKinematic = false;
        dado55.GetComponent<Rigidbody>().AddForce(Vector3.down * 50, ForceMode.Impulse);
     
        //lancio i dadi6
        dado16.GetComponent<Rigidbody>().position = new Vector3(-12552.99f, 8685.634f, -6147.862f);
        dado16.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-43.89f, 60.578f, 85.622f);
        dado16.GetComponent<Rigidbody>().isKinematic = false;
        dado16.GetComponent<Rigidbody>().AddForce(Vector3.down * 50, ForceMode.Impulse);
        
        dado26.GetComponent<Rigidbody>().position = new Vector3(-12557.45f, 8690.139f, -6146.333f);
        dado26.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-43.89f, 60.578f, 85.622f);
        dado26.GetComponent<Rigidbody>().isKinematic = false;
        dado26.GetComponent<Rigidbody>().AddForce(Vector3.down * 50, ForceMode.Impulse);
      
        dado36.GetComponent<Rigidbody>().position = new Vector3(-12547.08f, 8686.647f, -6144.138f);
        dado36.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-43.89f, 60.578f, 85.622f);
        dado36.GetComponent<Rigidbody>().isKinematic = false;
        dado36.GetComponent<Rigidbody>().AddForce(Vector3.down * 50, ForceMode.Impulse);
     
        dado46.GetComponent<Rigidbody>().position = new Vector3(-12548.81f, 8685.184f, -6141.014f);
        dado46.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-43.89f, 60.578f, 85.622f);
        dado46.GetComponent<Rigidbody>().isKinematic = false;
        dado46.GetComponent<Rigidbody>().AddForce(Vector3.down * 50, ForceMode.Impulse);
        
        dado56.GetComponent<Rigidbody>().position = new Vector3(-12548.54f, -12548.54f, -6149.524f);
        dado56.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-43.89f, 60.578f, 85.622f);
        dado56.GetComponent<Rigidbody>().isKinematic = false;
        dado56.GetComponent<Rigidbody>().AddForce(Vector3.down * 50, ForceMode.Impulse);
      
        //lancio i dadi7
        dado17.GetComponent<Rigidbody>().position = new Vector3(-12431.99f, -12431.99f, -6198.862f);
        dado17.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-43.89f, 60.578f, 85.622f);
        dado17.GetComponent<Rigidbody>().isKinematic = false;
        dado17.GetComponent<Rigidbody>().AddForce(Vector3.down * 50, ForceMode.Impulse);

        dado27.GetComponent<Rigidbody>().position = new Vector3(-12436.45f, 8690.139f, -6197.333f);
        dado27.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-43.89f, 60.578f, 85.622f);
        dado27.GetComponent<Rigidbody>().isKinematic = false;
        dado27.GetComponent<Rigidbody>().AddForce(Vector3.down * 50, ForceMode.Impulse);
      
        dado37.GetComponent<Rigidbody>().position = new Vector3(-12426.08f, 8686.647f, -6195.138f);
        dado37.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-43.89f, 60.578f, 85.622f);
        dado37.GetComponent<Rigidbody>().isKinematic = false;
        dado37.GetComponent<Rigidbody>().AddForce(Vector3.down * 50, ForceMode.Impulse);
       
        dado47.GetComponent<Rigidbody>().position = new Vector3(-12427.81f, 8685.184f, -6192.014f);
        dado47.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-43.89f, 60.578f, 85.622f);
        dado47.GetComponent<Rigidbody>().isKinematic = false;
        dado47.GetComponent<Rigidbody>().AddForce(Vector3.down * 50, ForceMode.Impulse);
       
        dado57.GetComponent<Rigidbody>().position = new Vector3(-12427.54f, 8685.972f, -6200.524f);
        dado57.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-43.89f, 60.578f, 85.622f);
        dado57.GetComponent<Rigidbody>().isKinematic = false;
        dado57.GetComponent<Rigidbody>().AddForce(Vector3.down * 50, ForceMode.Impulse);
       
        //lancio i dadi8
        dado18.GetComponent<Rigidbody>().position = new Vector3(-12313.99f, 8685.634f, -6234.862f);
        dado18.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-43.89f, 60.578f, 85.622f);
        dado18.GetComponent<Rigidbody>().isKinematic = false;
        dado18.GetComponent<Rigidbody>().AddForce(Vector3.down * 50, ForceMode.Impulse);
 
        dado28.GetComponent<Rigidbody>().position = new Vector3(-12318.45f, 8690.139f, -6233.333f);
        dado28.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-43.89f, 60.578f, 85.622f);
        dado28.GetComponent<Rigidbody>().isKinematic = false;
        dado28.GetComponent<Rigidbody>().AddForce(Vector3.down * 50, ForceMode.Impulse);

        dado38.GetComponent<Rigidbody>().position = new Vector3(-12308.08f, 8686.647f, -6231.138f);
        dado38.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-43.89f, 60.578f, 85.622f);
        dado38.GetComponent<Rigidbody>().isKinematic = false;
        dado38.GetComponent<Rigidbody>().AddForce(Vector3.down * 50, ForceMode.Impulse);
       
        dado48.GetComponent<Rigidbody>().position = new Vector3(-12309.81f, 8685.184f, -6228.014f);
        dado48.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-43.89f, 60.578f, 85.622f);
        dado48.GetComponent<Rigidbody>().isKinematic = false;
        dado48.GetComponent<Rigidbody>().AddForce(Vector3.down * 50, ForceMode.Impulse);

        dado58.GetComponent<Rigidbody>().position = new Vector3(-12309.54f, 8685.972f, -6236.524f);
        dado58.GetComponent<Rigidbody>().rotation = Quaternion.Euler(-43.89f, 60.578f, 85.622f);
        dado58.GetComponent<Rigidbody>().isKinematic = false;
        dado58.GetComponent<Rigidbody>().AddForce(Vector3.down * 50, ForceMode.Impulse);
 
    }
}
