using TMPro;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;

public class GameScreen : MonoBehaviour
{
    [Header("References")]
    [SerializeField] private Image background;
    [Space(10)]
    [SerializeField] private TMP_Text subtitles;
    [Space(10)]
    [SerializeField] private GameObject optionsParent;
    [SerializeField] private Button optionPrefab;
    [Space(10)]
    [SerializeField] private Image characterLeft;
    [SerializeField] private Image characterCenter;
    [SerializeField] private Image characterRight;
    
    private ScreenDetails _screen;

    private void SetBackground()
    {
        if (_screen.BackgroundSprite != null)
        {
            characterLeft.enabled = true;
            background.sprite = _screen.BackgroundSprite;
        }
        else
        {
            characterLeft.enabled = false;
        }
    }
    
    private void SetCharacters()
    {
        // Left
        if (_screen.CharacterLeftSprite != null)
        {
            characterLeft.enabled = true;
            characterLeft.sprite = _screen.CharacterLeftSprite;
        }
        else
        {
            characterLeft.enabled = false;
        }
        
        // Center
        if (_screen.CharacterCenterSprite != null)
        {
            characterCenter.enabled = true;
            characterCenter.sprite = _screen.CharacterCenterSprite;
        }
        else
        {
            characterCenter.enabled = false;
        }
        
        // Right
        if (_screen.CharacterRightSprite != null)
        {
            characterRight.enabled = true;
            characterRight.sprite = _screen.CharacterRightSprite;
        }
        else
        {
            characterRight.enabled = false;
        }
    }

    private void SetSubtitles()
    {
       subtitles.SetText(_screen.SubtitlesText);
    }

    private void SetOptions()
    {
        for (var i = optionsParent.transform.childCount - 1; i >= 0; i--)
        {
            Destroy(optionsParent.transform.GetChild(i).gameObject);
        }
        
        foreach (var option in _screen.Options)
        {
            var optionObject = Instantiate(optionPrefab, optionsParent.transform);
            optionObject.GetComponentInChildren<TMP_Text>().SetText(option.Text);
            optionObject.GetComponentInChildren<Button>().onClick.AddListener(option.Select); 
        }
    }

    public void SetScreen(ScreenDetails nextScreen)
    {
        _screen = nextScreen;
        
        SetBackground();
        SetSubtitles();
        SetOptions();
        SetCharacters();
    }
}

public struct ScreenDetails
{
    public Sprite BackgroundSprite;

    public string SubtitlesText;

    public Option[] Options;

    public Sprite CharacterLeftSprite;
    public Sprite CharacterCenterSprite;
    public Sprite CharacterRightSprite;
}

public struct Option
{
    public string Text;
    public UnityAction Select;
}