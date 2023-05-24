using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class end : MonoBehaviour
{
    public GameObject panel;
    public GameObject creditPanel;

    private void Start()
    {
        creditPanel.SetActive(false);
        panel.SetActive(true);
    }

    public void goStart()
    {
        SceneManager.LoadScene(0);
    }

    public void goCredit()
    {
        panel.SetActive(false);
        creditPanel.SetActive(true);
    }

    public void goEnd()
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
