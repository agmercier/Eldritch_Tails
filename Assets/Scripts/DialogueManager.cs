using System.Linq;
using UnityEngine;
using Ink.Runtime;

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

    private const string Background = "background";
    private const string CharacterLeft = "left";
    private const string CharacterCenter = "center";
    private const string CharacterRight = "right";
    
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
    }
    
    private void Start()
    {
        _currentStory = new Story(inkFile.text);
        
        ContinueStory();
    }

    private void ContinueStory()
    {
        if (!_currentStory.canContinue) return;
        
        _currentStory.Continue();

        Sprite backgroundSprite = null;
        Sprite characterLeftSprite = null;
        Sprite characterCenterSprite = null;
        Sprite characterRightSprite = null;

        foreach (var splitTag in _currentStory.currentTags.Select(inkTag => inkTag.Split(":")))
        {
            switch (splitTag[0])
            {
                case Background:
                    backgroundSprite = LoadSprite(splitTag[1]);
                    break;
                case CharacterLeft:
                    characterLeftSprite = LoadSprite(splitTag[1]);
                    break;
                case CharacterCenter:
                    characterCenterSprite = LoadSprite(splitTag[1]);
                    break;
                case CharacterRight:
                    characterRightSprite = LoadSprite(splitTag[1]);
                    break;
            }
        }

        // Update UI
        gameScreen.SetScreen(new ScreenDetails
        {
            BackgroundSprite = backgroundSprite,
            SubtitlesText = _currentStory.currentText,
            Options = _currentStory.currentChoices.Select((choice, index) => new Option
                {
                    Text = choice.text,
                    Select = delegate { MakeChoice(index); }
                }
            ).ToArray(),
            CharacterLeftSprite = characterLeftSprite,
            CharacterCenterSprite = characterCenterSprite,
            CharacterRightSprite = characterRightSprite
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

    public void MakeChoice(int choiceIndex)
    {
        _currentStory.ChooseChoiceIndex(choiceIndex);
        ContinueStory();
    }
}
