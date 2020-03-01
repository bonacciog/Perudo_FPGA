using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class dropDiceScript : MonoBehaviour {
    public bool sound;

	// Use this for initialization
	void Start () {
        sound = true;
	}
    
    void OnCollisionStay()
    {
        if (sound)
        {
            SoundManagerScript.PlaySound("dropDice");
            sound = false;
        }

    }
}
