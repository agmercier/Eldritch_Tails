using System;
using TMPro;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using Random = UnityEngine.Random;


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
    [Space(10)]
    [SerializeField] private Transform runeOrigin;
    [SerializeField] private Button runePrefab;

    [Header("Parameters")]
    [SerializeField] private float typingSpeed = 0.04f;

    //display letter by letter variables
    private Coroutine displayLineCoroutine;
    public bool canContinueToNextLine = false;
    private bool keyPressed = false;


    //timer
    private Coroutine timer_coroutine;
    public Image timer_foreground;
    public GameObject timer_container;
    public float max_time = 0.04f;
    float time_remaining;


    //taking sound variables
    [Header("Audio")]
    [SerializeField] private bool makePredictable;
    [Range(0f, 1f)]
    public float talkVolume = 0.1f;
    [SerializeField] public DialogueAudioInfoSO defaultAudioInfo;
    private DialogueAudioInfoSO currentAudioInfo;
    private AudioSource audioSource;

    private readonly string[] choiceExclude = { "Continue", "Do nothing", "Go to the village", "Nod", "Decline", "Go back to village", "Go back home", "go back home", "Set out to get medicine", "GO HOME", "Fetch some water from the well", "Continue to well" };
    private readonly string[] choiceExcludeNotTimer = { "Continue", "Do nothing", "Go to the village", "Nod", "Decline", "Go back to village", "Go back home", "go back home", "Set out to get medicine", "GO HOME", "Fetch some water from the well", "Continue to well", "Western town", "Village in the mountains", "Capital", "Hmmm... strange", "Comment", "Continue when It is done", "GO. DEEPER. INTO. THE. WOODS.", "Realise" };


    private ScreenDetails _screen;

    private void Awake()
    {
        audioSource = this.gameObject.AddComponent<AudioSource>();

        currentAudioInfo = defaultAudioInfo;

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

    private void SetRunes()
    {
        for (var i = runeOrigin.transform.childCount - 1; i >= 0; i--)
        {
            Destroy(runeOrigin.transform.GetChild(i).gameObject);
        }
        
        foreach (var rune in _screen.Runes.Where(rune => !rune.IsDoNothing))
        {
            var button = Instantiate(runePrefab, runeOrigin);
            button.transform.SetLocalPositionAndRotation(new Vector3(rune.XOffset, rune.YOffset), Quaternion.identity);
            button.GetComponentInChildren<Button>().onClick.AddListener(rune.Select);
        }
    }

    private IEnumerator SetSubtitles()
    {
        //stop timer
        if (timer_coroutine != null)
        {
            StopCoroutine(timer_coroutine);
            timer_container.SetActive(false);
        }

        //initial delay to load new voice
        yield return new WaitForSeconds(typingSpeed);

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
                PlayDialogueSound(subtitles.maxVisibleCharacters, letter);
                subtitles.maxVisibleCharacters++;
                yield return new WaitForSeconds(typingSpeed);
            }

            
        }
        //start timer
        timer_coroutine = StartCoroutine(Timer(_screen.SubtitlesText.Length));

        canContinueToNextLine = true;
        SetOptions();
    }
    private IEnumerator Timer(float numLetters)
    {
        timer_container.SetActive(true);
        float fullTime = max_time * (numLetters * 0.01f);
        time_remaining = fullTime;
        timer_foreground.fillAmount = 1;

        while (time_remaining > 0)
        {
            time_remaining -= Time.deltaTime;
            timer_foreground.fillAmount = time_remaining / fullTime;
            yield return null;
        }
        foreach (var option in _screen.Options)
        {
            if(choiceExclude.Contains(option.Text))
            { 
                option.Select();
            }

        }
        timer_container.SetActive(false);
    }

    private void PlayDialogueSound(int currentDisplayedCharacterCount, char currentCharacter)
    {
        //set up variables
        AudioClip[] dialogueTypingSoundClips = currentAudioInfo.dialogueTypingSoundClips;
        int frequencyLevel = currentAudioInfo.frequencyLevel;
        float minPitch = currentAudioInfo.minPitch;
        float maxPitch = currentAudioInfo.maxPitch;
        bool stopAudioSource = currentAudioInfo.stopAudioSource;

        if (currentDisplayedCharacterCount % frequencyLevel == 0)
        {
            if (stopAudioSource)
            {
                audioSource.Stop();
            }
            AudioClip soundClip = null;

            //predictable audio hashing
            if (makePredictable)
            {
                int hashCode = currentCharacter.GetHashCode();
                int predictableIndex = hashCode % dialogueTypingSoundClips.Length;
                soundClip = dialogueTypingSoundClips[predictableIndex];
                int minPitchInt = (int)(minPitch * 100);
                int maxPitchInt = (int)(maxPitch * 100);
                int pitchRange = maxPitchInt - minPitchInt;
                //check if same so dont divide by 0
                if(pitchRange != 0)
                {
                    int predictablePitchInt = (hashCode % pitchRange) + minPitchInt;
                    float predictablePitch = predictablePitchInt / 100f;
                    audioSource.pitch = predictablePitch;
                }
                else
                {
                    audioSource.pitch = minPitch;
                }
            }
            else
            {
                int randomIndex = Random.Range(0, dialogueTypingSoundClips.Length);
                soundClip = dialogueTypingSoundClips[randomIndex];
                audioSource.pitch = Random.Range(minPitch, maxPitch);
            }
            audioSource.volume = talkVolume;
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
        foreach (var option in _screen.Options.Where(option => choiceExcludeNotTimer.Contains(option.Text)))
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
        SetRunes();

        currentAudioInfo = _screen.VoiceAudioInfo;
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

    public DialogueAudioInfoSO VoiceAudioInfo;

    public Rune[] Runes;

    public struct Rune
    {
        public UnityAction Select;
        public int XOffset;
        public int YOffset;
        public bool IsDoNothing;
    }
}

public struct Option
{
    public string Text;
    public UnityAction Select;
}