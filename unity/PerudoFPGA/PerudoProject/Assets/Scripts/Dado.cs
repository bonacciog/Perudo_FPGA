using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Dado : MonoBehaviour
{

    public Text testo;
    public Faccia[] facce;
    public int NumeroAttuale;
    public int dadoPrescelto;

    // Use this for initialization
    void Start()
    {
        NumeroDado();
        dadoPrescelto = -1;

    }

    // Update is called once per frame
    void Update()
    {
        if (NumeroAttuale == 0)
            testo.text = "Primo Dado :";
        else
            testo.text = "Primo Dado :" + NumeroAttuale;
        if (dadoPrescelto > 0)
        {
            lanciaDadi(dadoPrescelto);
            dadoPrescelto = -1;
        }

    }

    void NumeroDado()
    {
        for (int i = 0; i < facce.Length; i++)
        {
            if (facce[i].ToccaSuolo)
            {
                NumeroAttuale = 7 - facce[i].Numero;

            }

        }
        Invoke("NumeroDado", 0.5f);
    }

    void lanciaDadi(int dadoPrescelto)
    {
        float forzaIniziale = Random.Range(4,4);
        GetComponent<Rigidbody>().isKinematic = false;
        GetComponent<Rigidbody>().AddForce(new Vector3(0, forzaIniziale * 100, 0));

        switch (dadoPrescelto)
        {

            case 1:
                GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, Random.Range(-360, 360), 0);
                break;

            case 2:
                GetComponent<Rigidbody>().rotation = Quaternion.Euler(90, 0, Random.Range(-360, 360));
                break;
            case 3:
                GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, Random.Range(-360, 360), 90);
                break;
            case 4:
                GetComponent<Rigidbody>().rotation = Quaternion.Euler(0, Random.Range(-360, 360), 270);
                break;
            case 5:
                GetComponent<Rigidbody>().rotation = Quaternion.Euler(270, 0, Random.Range(-360, 360));
                break;
            case 6:
                GetComponent<Rigidbody>().rotation = Quaternion.Euler(180, Random.Range(-360, 360), 0);
                break;
        }
    }

}
