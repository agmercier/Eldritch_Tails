using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Ink.Runtime;

public class InkExternalFunctions 
{
   public void Bind(Story story)
    {
        story.BindExternalFunction("exFunc", (string mName) => DoSpecialFunctionThing(mName));

    }

    public void Unbind(Story story)
    {
        story.UnbindExternalFunction("exFunc");
    }

    public void DoSpecialFunctionThing(string name)
    {
        Debug.Log(name);
    }
}
