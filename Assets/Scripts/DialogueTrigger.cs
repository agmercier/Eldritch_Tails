using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DialogueTrigger : MonoBehaviour
{ 

    [Header("Ink JSON")]
    [SerializeField] private TextAsset inkJSON;


    private void Awake()
    {
    }

    private void Update()
    {
        //if (!DialogueManager.GetInstance().dialogueIsPlaying)
        //{
            if (InputManager.GetInstance().GetInteractPressed())
            {
                //DialogueManager.GetInstance().EnterDialogueMode(inkJSON, emoteAnimator);
            }
        //}
    }
}