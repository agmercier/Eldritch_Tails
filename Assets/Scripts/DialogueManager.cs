using System;
using System.Linq;
using UnityEngine;
using Ink.Runtime;
using UnityEngine.UI;
using System.IO;
using System.Collections.Generic;
using static System.Int32;

public class DialogueManager : MonoBehaviour
{
    private static DialogueManager _instance;

    [Header("Ink")]
    [SerializeField] private TextAsset inkFile;

    [Header("UI")]
    [SerializeField] private GameScreen gameScreen;

    [Header("Resources")]
    [SerializeField] private Sprite[] sprites;

    private Story _currentStory;

    private GameObject barrierTextFile;

    private const string Background = "background";
    private const string CharacterLeft = "left";
    private const string CharacterCenter = "center";
    private const string CharacterRight = "right";
    private const string AudioVoice = "voice";
    private const string Rune = "rune";
    private const string RuneX = "runeX";
    private const string RuneY = "runeY";

    [Header("voices")]
    [SerializeField] public DialogueAudioInfoSO defaultAudioInfo;
    [SerializeField] public DialogueAudioInfoSO[] audioInfos;

    private DialogueAudioInfoSO currentAudioInfo;
    private Dictionary<string, DialogueAudioInfoSO> audioInfoDictionary;

    public static DialogueManager GetInstance()
    {
        return _instance;
    }

    private void Awake()
    {
        if (_instance != null)
        {
            Debug.LogWarning("More than one instance of Dialogue Manager");
        }
        _instance = this;

        currentAudioInfo = defaultAudioInfo;
    }
    
    private void Start()
    {
        _currentStory = new Story(inkFile.text);

        InitializeAudioInfoDictionary();
        
        ContinueStory();
    }

    private void ContinueStory()
    {
        ChangeBarrier();

        if (!_currentStory.canContinue) return;
        
        _currentStory.Continue();

        Sprite backgroundSprite = null;
        Sprite characterLeftSprite = null;
        Sprite characterCenterSprite = null;
        Sprite characterRightSprite = null;
        Sprite runeSprite = null;
        var runeX = 0;
        var runeY = 0;

        DialogueAudioInfoSO voiceAudioInfo = currentAudioInfo;

        foreach (var splitTag in _currentStory.currentTags.Select(inkTag => inkTag.Split(":")))
        {
            switch (splitTag[0])
            {
                case Background:
                    backgroundSprite = LoadSprite(splitTag[1].Trim());
                    break;
                case CharacterLeft:
                    characterLeftSprite = LoadSprite(splitTag[1].Trim());
                    break;
                case CharacterCenter:
                    characterCenterSprite = LoadSprite(splitTag[1].Trim());
                    break;
                case CharacterRight:
                    characterRightSprite = LoadSprite(splitTag[1].Trim());
                    break;
                case AudioVoice:
                    voiceAudioInfo = SetCurrentDialogueInfo(splitTag[1].Trim());
                    currentAudioInfo = voiceAudioInfo;
                    break;
                case Rune:
                    runeSprite = LoadSprite(splitTag[1].Trim());
                    break;
                case RuneX:
                    runeX = Parse(splitTag[1].Trim());
                    break;
                case RuneY:
                    runeY = Parse(splitTag[1].Trim());
                    break;
            }
        }

        // Update UI
        gameScreen.SetScreen(new ScreenDetails
        {
            BackgroundSprite = backgroundSprite,
            SubtitlesText = _currentStory.currentText,
            Options = _currentStory.currentChoices.Count == 0 ?
                _currentStory.canContinue ?
                    new Option[]{ new()
                        {
                            Text = "Continue",
                            Select = ContinueStory
                        }
                    }:
                    Array.Empty<Option>():   
                _currentStory.currentChoices.Select((choice, index) => new Option
                {
                    Text = choice.text,
                    Select = delegate { MakeChoice(index); }
                }
            ).ToArray(),
            CharacterLeftSprite = characterLeftSprite,
            CharacterCenterSprite = characterCenterSprite,
            CharacterRightSprite = characterRightSprite,
            VoiceAudioInfo = voiceAudioInfo,
            RuneSprite = runeSprite,
            RuneX = runeX,
            RuneY = runeY
        });
    }

    private Sprite LoadSprite(string spriteName)
    {
        foreach (var sprite in sprites)
        {
            if (sprite.name == spriteName)
            {
                return sprite;
            }
        }

        Debug.LogError("Cannot find asset with name: " + spriteName);
        return null;
    }

    private void InitializeAudioInfoDictionary()
    {
        audioInfoDictionary = new Dictionary<string, DialogueAudioInfoSO>();
        audioInfoDictionary.Add(defaultAudioInfo.id, defaultAudioInfo);
        foreach (DialogueAudioInfoSO audioInfo in audioInfos)
        {
            audioInfoDictionary.Add(audioInfo.id, audioInfo);
        }
    }

    private DialogueAudioInfoSO SetCurrentDialogueInfo(string id)
    {
        DialogueAudioInfoSO audioInfo = null;
        audioInfoDictionary.TryGetValue(id, out audioInfo);
        if (audioInfo != null)
        {
            return audioInfo;
        }
        else
        {
            Debug.LogWarning("no matching audio info id: " + id);
            foreach(string k in audioInfoDictionary.Keys)
            {
                Debug.LogWarning(k);

            }
            return defaultAudioInfo;
        }
    }

    public void MakeChoice(int choiceIndex)
    {
        _currentStory.ChooseChoiceIndex(choiceIndex);
        ContinueStory();
    }

    private void ChangeBarrier()
    {
        string path = Application.streamingAssetsPath + "/Barrier/" + "Barrier_Controler" + ".txt";
        List<string> fileLines = File.ReadAllLines(path).ToList();

        foreach (string  line in fileLines)
        {
            string variableName = "barrier";
            object variableValue = line;
            _currentStory.variablesState[variableName] = variableValue;
        }
    }
}
