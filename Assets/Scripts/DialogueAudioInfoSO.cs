using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "DialogueAudioInfo", menuName =  "ScriptableObjects/DialogueAudioInfoSO", order = 1)]
public class DialogueAudioInfoSO : ScriptableObject
{
    public string id;

    public  AudioClip[] dialogueTypingSoundClips;

    [Range(1, 20)]
    public  int frequencyLevel = 2;
    [Range(-3, 3)]
    public  float maxPitch = 3.0f;
    [Range(-3, 3)]
    public  float minPitch = 0.5f;

    public  bool stopAudioSource;
}
