INCLUDE Globals.ink
{ barrier == "" : -> main | -> already_chosen }

=== main ===
Which choice?
    + [Kill]
        -> chosen("kill")
    + [Die]
        -> chosen("die")
    + [Live]
        -> chosen("live")

=== chosen(name) ===
~ barrier = name


You chose {name}!
~ exFunc("itWorks")
-> END
=== already_chosen ===

you already chose {barrier}!

-> END