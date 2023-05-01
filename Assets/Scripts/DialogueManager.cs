using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using Ink.Runtime;
using UnityEngine.EventSystems;
using Ink.UnityIntegration;

public class DialogueManager : MonoBehaviour
{
    [Header("Global Ink File")]
    [SerializeField] private InkFile globalsInkFile;

    private static DialogueManager instance;

    [Header("Dialogue UI")]
    [SerializeField] private GameObject dialogueBox;
    [SerializeField] private TextMeshProUGUI dialogueText;

    [Header("Choices UI")]
    [SerializeField] private GameObject[] choices;

    TextMeshProUGUI[] choicesText;

    private Story currentStory;

    public bool dialogueIsPlaying;

    private DialogueVariables dialogueVariables;
    private InkExternalFunctions inkExternalFunctions;

    private void Awake()
    {
        if (instance != null)
        {
            Debug.LogWarning("More than one instance of Dialogue Manager");
        }
        instance = this;

        dialogueVariables = new DialogueVariables(globalsInkFile.filePath);
        inkExternalFunctions = new InkExternalFunctions();
    }

    public static DialogueManager Getinstance()
    {
        return instance;
    }

    private void Start()
    {
        dialogueIsPlaying = false;
        dialogueBox.SetActive(false);

        choicesText = new TextMeshProUGUI[choices.Length];
        int index = 0;
        foreach(GameObject choice in choices)
        {
            choicesText[index] = choice.GetComponentInChildren<TextMeshProUGUI>();
            index++;
        }
    }

    public void EnterDialogueMode(TextAsset inkJSON)
    {
        currentStory = new Story(inkJSON.text);
        dialogueIsPlaying = true;
        dialogueBox.SetActive(true);

        dialogueVariables.StartListening(currentStory);

        inkExternalFunctions.Bind(currentStory);

        ContinueStory();
    }

    private void Update()
    {
        if (!dialogueIsPlaying)
        {
            return;
        }
        else if(Input.GetButtonDown("Submit"))
        {
            ContinueStory();
        }
    }

    private IEnumerator ExitDialogueMode()
    {
        yield return new WaitForSeconds(0.2f);

        dialogueVariables.StopListening(currentStory);

        inkExternalFunctions.Unbind(currentStory);

        dialogueIsPlaying = false;
        dialogueBox.SetActive(false);
        dialogueText.text = "";


    }

    private void ContinueStory()
    {
        if (currentStory.canContinue)
        {
             string nextLine = currentStory.Continue();
            if(nextLine.Equals("")  && !currentStory.canContinue)
            {
                StartCoroutine(ExitDialogueMode());
            }
            else
            {
                dialogueText.text = nextLine;
                DisplayChoices();
            }
        }
        else
        {
            StartCoroutine(ExitDialogueMode());
        }
    }

    public void DisplayChoices()
    {
        List<Choice> currentChoices = currentStory.currentChoices;

        if (currentChoices.Count > choices.Length)
        {
            Debug.LogError("More choices than UI supports");
        }

        int index = 0;
        foreach(Choice choice in currentChoices)
        {
            choices[index].gameObject.SetActive(true);
            choicesText[index].text = choice.text;
            index++;
        }
        for (int i = index; i < choices.Length; i++)
        {
            choices[i].SetActive(false);
        }

        StartCoroutine(SelectFirstChoice());
    }

    private IEnumerator SelectFirstChoice()
    {
        EventSystem.current.SetSelectedGameObject(null);
        yield return new WaitForEndOfFrame();
        EventSystem.current.SetSelectedGameObject(choices[0].gameObject);
    }

    public void MakeChoice(int choiceIndex)
    {
        currentStory.ChooseChoiceIndex(choiceIndex);
    }

    //use to access variables from unity
    public Ink.Runtime.Object GetVariableState(string variableName)
    {
        Ink.Runtime.Object variableValue = null;
        dialogueVariables.variables.TryGetValue(variableName, out variableValue);
        if(variableValue == null)
        {
            Debug.LogWarning("Ink variable not found: " + variableName);
        }
        return variableValue;
    }
}
