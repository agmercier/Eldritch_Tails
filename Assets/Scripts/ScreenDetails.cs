using UnityEngine;

[CreateAssetMenu(fileName = "Data", menuName = "ScriptableObjects/ScreenDetails", order = 1)]
public class ScreenDetails : ScriptableObject
{
    public Sprite backgroundSprite;
    [Space(10)]
    public string subtitlesText;
    [Space(10)]
    public Option[] options;
    [Space(10)]
    public Sprite characterLeftSprite;
    public Sprite characterCenterSprite;
    public Sprite characterRightSprite;    
}
