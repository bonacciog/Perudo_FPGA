using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SoundManagerScript : MonoBehaviour {

    public static AudioClip startGameSound, sxDxSound, okSound, errorSound, dropDiceSound, gameOverSound,
        majinBuSound, ironmanSound, laraCroftSound, yoshiSound, marioSound, elfoSound, batmanSound, narutoSound, booSound, victorySound, applauseSound;
    static AudioSource audioSrc;

    // Use this for initialization
    void Start()
    {
        startGameSound = Resources.Load<AudioClip>("startGame");
        sxDxSound = Resources.Load<AudioClip>("sxDx");
        okSound = Resources.Load<AudioClip>("ok");
        dropDiceSound = Resources.Load<AudioClip>("dropDice");
        gameOverSound = Resources.Load<AudioClip>("gameOver");
        errorSound = Resources.Load<AudioClip>("error");

        marioSound = Resources.Load<AudioClip>("mario");
        ironmanSound = Resources.Load<AudioClip>("ironman");
        laraCroftSound = Resources.Load<AudioClip>("laraCroft");
        majinBuSound = Resources.Load<AudioClip>("majinBu");
        batmanSound = Resources.Load<AudioClip>("batman");
        narutoSound = Resources.Load<AudioClip>("naruto");
        yoshiSound = Resources.Load<AudioClip>("yoshi");
        elfoSound = Resources.Load<AudioClip>("elfo");
        booSound = Resources.Load<AudioClip>("boo");
        victorySound = Resources.Load<AudioClip>("victory");
        applauseSound = Resources.Load<AudioClip>("applause");

        audioSrc = GetComponent<AudioSource>();

    }

    // Update is called once per frame
    void Update()
    {

    }

    public static void PlaySound(string clip)
    {
        switch (clip)
        {
            case "sxDx":
                audioSrc.PlayOneShot(sxDxSound);
                break;
            case "ok":
                audioSrc.PlayOneShot(okSound);
                break;
            case "dropDice":
                audioSrc.PlayOneShot(dropDiceSound);
                break;
            case "error":
                audioSrc.PlayOneShot(errorSound);
                break;
            case "gameOver":
                audioSrc.PlayOneShot(gameOverSound);
                break;
            case "naruto":
                audioSrc.PlayOneShot(narutoSound);
                break;
            case "mario":
                audioSrc.PlayOneShot(marioSound);
                break;
            case "laraCroft":
                audioSrc.PlayOneShot(laraCroftSound);
                break;
            case "yoshi":
                audioSrc.PlayOneShot(yoshiSound);
                break;
            case "batman":
                audioSrc.PlayOneShot(batmanSound);
                break;
            case "elfo":
                audioSrc.PlayOneShot(elfoSound);
                break;
            case "majinBu":
                audioSrc.PlayOneShot(majinBuSound);
                break;
            case "ironman":
                audioSrc.PlayOneShot(ironmanSound);
                break;
            case "boo":
                audioSrc.PlayOneShot(booSound);
                break;
            case "victory":
                audioSrc.PlayOneShot(victorySound);
                break;
            case "applause":
                audioSrc.PlayOneShot(applauseSound);
                break;
        }
    }
    public static void StopAllSounds()
    {
        audioSrc.Stop();
    }
}
