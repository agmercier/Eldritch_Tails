using TMPro;
using UnityEngine;
using UnityEngine.SceneManagement;

public class StartScreen : MonoBehaviour
{
    public void StartGame()
    {
        var playerName = GameObject.Find("PlayerName").GetComponent<TMP_Text>().text;
        PlayerPrefs.SetString("name", playerName);
        SceneManager.LoadScene("Scenes/SampleScene");
    } 
}
