using System;
using TMPro;
using UnityEngine;

public class GameManager : MonoBehaviour
{
    [SerializeField] private TMP_Text influenceText;
    [HideInInspector] public int influence;

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
