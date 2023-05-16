using System;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class GameManager : MonoBehaviour
{
    [Header("Influence")]
    [SerializeField] private TMP_Text influenceText;
    [HideInInspector] public int influence;

    [Header("Rune")]
    public HashSet<string> Runes = new();

    private static GameManager _instance;

    public static GameManager Instance
    {
        get
        {
            if (_instance is null)
                Debug.LogError("Game Manager is NULL");

            return _instance;
        }
    }

    private void Awake()
    {
        _instance = this;
    }

    private void Start()
    {
        UpdateUI();
    }

    private void UpdateUI()
    {
        influenceText.text = $"Influence: {influence}";
    }
    
    public void GainInfluence(int amount)
    {
        influence += amount;
        UpdateUI();
    }

    public bool SpendInfluence(int amount)
    {
        if (influence < amount) return false;

        influence -= amount;
        UpdateUI();
        return true;
    }
}
