using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChangesFromInk : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        string barrierActive = ((Ink.Runtime.StringValue)DialogueManager.Getinstance().GetVariableState("barrier")).value;

        switch (barrierActive)
        {
            case "":
                Debug.Log("did not choose yet");
                break;
            case "Active":
                Debug.Log("did not choose yet");
                break;
            case "Disabled":
                Debug.Log("did not choose yet");
                break;
            default:
                Debug.LogWarning("This value for barrier \"variable\" is not handeled");
                break;
        }
    }
}
