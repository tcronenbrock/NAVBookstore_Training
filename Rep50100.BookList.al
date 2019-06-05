report 50100 "BookList"
{
    Caption = 'Book List';
    DefaultLayout = RDLC;
    RDLCLayout = 'Rep50100.BookList.rdlc';
    ApplicationArea = All;
    UsageCategory = ReportsAndAnalysis;

    dataset
    {
        dataitem(SingleRowData; Integer)
        {
            DataItemTableView = sorting (Number) where (Number = const (1));

            column(COMPANYNAME; CompanyProperty.DisplayName()) { }
        }
        dataitem(Book; Book)
        {
            RequestFilterFields = "No.", Hardcover;

            column(No_Book; "No.") { IncludeCaption = true; }
            column(Author_Book; Author) { IncludeCaption = true; }
            column(Title_Book; Title) { IncludeCaption = true; }
            column(PageCount_Book; "Page Count") { IncludeCaption = true; }

        }
    }

    labels
    {
        TitleCaption = 'Book-List', Comment = 'Title shown in upper left corner of report';//, MaxLength = 25, Locked = true;
        PageCaption = 'Page {0} of {1}';

    }

}