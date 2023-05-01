using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.Serialization;
using UnityEngine.UI;

public class GameScreen : MonoBehaviour
{
    [Header("Screen Details")]
    public ScreenDetails initialScreen;
    private ScreenDetails _screen;

    [Header("References")]
    public Image background;
    [Space(10)]
    public TMP_Text subtitles;
    [Space(10)]
    public GameObject optionsParent;
    public Button optionPrefab;
    [Space(10)]
    public Image characterLeft;
    public Image characterCenter;
    public Image characterRight;
    
    private void Start()
    {
        SetScreen(initialScreen);
    }

    private void SetBackground()
    {
        if (_screen.backgroundSprite != null)
        {
            background.sprite = _screen.backgroundSprite;
        }
        else
        {
            background.gameObject.SetActive(false);
        }
    }
    
    private void SetCharacters()
    {
        // Left
        if (_screen.characterLeftSprite != null)
        {
            characterLeft.enabled = true;
            characterLeft.sprite = _screen.characterLeftSprite;
        }
        else
        {
            characterLeft.enabled = false;
        }
        
        // Center
        if (_screen.characterCenterSprite != null)
        {
            characterCenter.enabled = true;
            characterCenter.sprite = _screen.characterCenterSprite;
        }
        else
        {
            characterCenter.enabled = false;
        }
        
        // Right
        if (_screen.characterRightSprite != null)
        {
            characterRight.enabled = true;
            characterRight.sprite = _screen.characterRightSprite;
        }
        else
        {
            characterRight.enabled = false;
        }
    }

    private void SetSubtitles()
    {
       // subtitles.SetText(_screen.subtitlesText);
    }

    private void SetOptions()
    {
        for (var i = optionsParent.transform.childCount - 1; i >= 0; i--)
        {
            Destroy(optionsParent.transform.GetChild(i).gameObject);
        }
        
        foreach (var option in _screen.options)
        {
            var optionObject = Instantiate(optionPrefab, optionsParent.transform);
            optionObject.GetComponentInChildren<TMP_Text>().SetText(option.text);
            optionObject.GetComponentInChildren<Button>().onClick.AddListener(delegate
            {
                SetScreen(option.nextScreen);
            }); 
        }
    }

    private void SetScreen(ScreenDetails nextScreen)
    {
        _screen = nextScreen;
        
        SetBackground();
        SetSubtitles();
        SetOptions();
        SetCharacters();
    }
}

[Serializable]
public struct Option
{
    public string text;
    public ScreenDetails nextScreen;
}