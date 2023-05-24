using TMPro;
using UnityEngine;
using UnityEngine.SceneManagement;

public class StartScreen : MonoBehaviour
{
    public GameObject panel;
    public GameObject creditPanel;

    private void Start()
    {
        creditPanel.SetActive(false);
        panel.SetActive(true);
    }

    public void StartGame()
    {
        var playerName = GameObject.Find("PlayerName").GetComponent<TMP_Text>().text;
        PlayerPrefs.SetString("name", playerName);
        SceneManager.LoadScene("Scenes/SampleScene");
    }

    public void goCredit()
    {
        panel.SetActive(false);
        creditPanel.SetActive(true);
    }

    public void exitCredit()
    {
        creditPanel.SetActive(false);
        panel.SetActive(true);
    }

    public void exitGame()
    {
        Debug.Log("exitgame");
        Application.Quit();
    }
}
