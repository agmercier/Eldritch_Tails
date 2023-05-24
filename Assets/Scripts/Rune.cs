using UnityEngine;
using UnityEngine.UI;

public class Rune : MonoBehaviour
{
    private Image _image;

    private void Start()
    {
        _image = GetComponent<Image>();
        _image.color = new Color(_image.color.r, _image.color.g, _image.color.b, 0.0f);
    }

    public void ChangeWhenHover()
    {
        _image.color = new Color(_image.color.r, _image.color.g, _image.color.b, 0.3f);
    }

    public void ChangeWhenLeaves()
    {
        _image.color = new Color(_image.color.r, _image.color.g, _image.color.b, 0.0f);
    }
}