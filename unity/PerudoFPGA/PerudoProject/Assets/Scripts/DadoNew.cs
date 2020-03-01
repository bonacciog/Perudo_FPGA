using UnityEngine;

public class DadoNew : MonoBehaviour
{
    public void PosizionaDado(int dadoPrescelto)
    {
        this.GetComponent<Rigidbody>().isKinematic = true;
        switch (dadoPrescelto)
        {

            case 1:
                GetComponent<Rigidbody>().rotation = Quaternion.Euler(180, 21, -272);
                break;
            case 2:
                GetComponent<Rigidbody>().rotation = Quaternion.Euler(-179, 22, -90);
                break;
            case 3:
                GetComponent<Rigidbody>().rotation = Quaternion.Euler(91, 73, 141);
                break;
            case 4:
                GetComponent<Rigidbody>().rotation = Quaternion.Euler(181, 20, -180);
                break;
            case 5:
                GetComponent<Rigidbody>().rotation = Quaternion.Euler(267, 25, -364);
                break;
            case 6:
                GetComponent<Rigidbody>().rotation = Quaternion.Euler(180, -68, 0);
                break;
        }
    }

}
