using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Faccia : MonoBehaviour
{

    public int Numero;
    public bool ToccaSuolo;

    // Use this for initialization
    void Start()
    {
        Numero = int.Parse(GetComponent<TextMesh>().text);
    }

    // Update is called once per frame
    void Update()
    {

    }

    void OnTriggerEnter(Collider col)
    {
        if (col.gameObject.tag == "Bicchiere")
            ToccaSuolo = true;
    }

    void OnTriggerExit(Collider col)
    {
        ToccaSuolo = false;
    }
}
