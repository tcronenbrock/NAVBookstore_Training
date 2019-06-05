page 50103 "BookDetailsFactBox"
{
    Caption = 'Book Details FactBox';
    PageType = CardPart;
    SourceTable = Book;

    layout
    {
        area(Content)
        {
            field("No."; "No.")
            {
                ApplicationArea = All;
                trigger OnDrillDown()
                begin
                    ShowDetails();
                end;

            }
            field(Title; Title)
            {
                ApplicationArea = All;
            }
            field(Author; Author)
            {
                ApplicationArea = All;
            }
            field("No. of Customers"; "No. of Customers")
            {
                ApplicationArea = All;
            }

        }
    }

    local procedure ShowDetails();
    begin
        Page.Run(Page::"BookCard", Rec);
    end;
}