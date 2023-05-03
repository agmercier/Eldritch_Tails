using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Ink.Runtime;

public class TurnOffBarrier : MonoBehaviour

    
{
    [Header("Ink")]
    [SerializeField] private TextAsset inkFile;
    private Story _currentStory;

    // Start is called before the first frame update
    void Start()
    {
        _currentStory = new Story(inkFile.text);
        string variableName = "barrier";
        object variableValue = "off";

        _currentStory.variablesState[variableName] = variableValue;
    }
    private void Update()
    {
        string variableName = "barrier";
        object variableValue = "off";

        _currentStory.variablesState[variableName] = variableValue;
    }
}
