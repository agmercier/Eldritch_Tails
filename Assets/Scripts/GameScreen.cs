using TMPro;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;
using System.Collections.Generic;
using System.Collections;




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

    [Header("Parameters")]
    [SerializeField] private float typingSpeed = 0.04f;

    //display letter by letter variables
    private Coroutine displayLineCoroutine;
    public bool canContinueToNextLine = false;
    private bool keyPressed = false;
    //taking sound variables
    [Header("Audio")]
    [SerializeField] private AudioClip[] dialogueTypingSoundClips;
    [SerializeField] private bool stopAudioSource;
    [Range(1,5)]
    [SerializeField] private int frequencyLevel = 2;
    [Range(-3, 3)]
    [SerializeField] private float maxPitch = 3.0f;
    [Range(-3, 3)]
    [SerializeField] private float minPitch = 0.5f;
    
    private AudioSource audioSource;
    
    private ScreenDetails _screen;

    private void Awake()
    {
        audioSource = this.gameObject.AddComponent<AudioSource>();
    }

    private void Update()
    {
        if (Input.GetButtonDown("Interact") || Input.GetButtonDown("Submit") || Input.GetButtonDown("Click"))
        {
            keyPressed = true;
        }
    }

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

    private IEnumerator SetSubtitles()
    {
        subtitles.SetText(_screen.SubtitlesText);
        subtitles.maxVisibleCharacters = 0;
        canContinueToNextLine = false;
        keyPressed = false;
        HideOptions();


        bool isAddingRichTextTag = false;
        foreach (char letter in _screen.SubtitlesText.ToCharArray())
        {
            if (keyPressed)
            {
                subtitles.maxVisibleCharacters = _screen.SubtitlesText.Length;           
                break;
            }

            //parse for text tags (ex:color, bold, italic, etc...)
            if (letter == '<' || isAddingRichTextTag)
            {
                isAddingRichTextTag = true;
                subtitles.text += letter;
                if(letter == '>')
                {
                    isAddingRichTextTag = false;
                }
            }
            else  //not a tag so display normaly
            {
                PlayDialogueSound(subtitles.maxVisibleCharacters);
                subtitles.maxVisibleCharacters++;
                yield return new WaitForSeconds(typingSpeed);
            }

            
        }
        canContinueToNextLine = true;
        SetOptions();
    }
    private void PlayDialogueSound(int currentDisplayedCharacterCount)
    {
        if(currentDisplayedCharacterCount % frequencyLevel == 0)
        {
            if (stopAudioSource)
            {
                audioSource.Stop();
            }
            int randomIndex = Random.Range(0, dialogueTypingSoundClips.Length);
            AudioClip soundClip = dialogueTypingSoundClips[randomIndex];

            audioSource.pitch = Random.Range(minPitch, maxPitch);
            audioSource.PlayOneShot(soundClip);
        }
    }

    private void HideOptions()
    {
        for (var i = optionsParent.transform.childCount - 1; i >= 0; i--)
        {
            Destroy(optionsParent.transform.GetChild(i).gameObject);
        }
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

        if(displayLineCoroutine !=  null)
        {
            StopCoroutine(displayLineCoroutine);
        }
        displayLineCoroutine = StartCoroutine(SetSubtitles());
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