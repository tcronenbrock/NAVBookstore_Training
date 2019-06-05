pageextension 50101 "CustomerCardExtension" extends "Customer Card"
{
    layout
    {
        addbefore(Control149)
        {
            part("Book Details Fact Box"; BookDetailsFactBox)
            {
                Caption = 'Book Details';
                ApplicationArea = All;
                SubPageLink = "No." = field ("Favorite Book No.");
            }
        }


        addlast(General)
        {
            field("Favorite Book"; "Favorite Book No.")
            {
                ApplicationArea = All;
            }
        }
    }
}