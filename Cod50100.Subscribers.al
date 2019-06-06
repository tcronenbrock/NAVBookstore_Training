codeunit 50100 "Subscribers"
{
    [EventSubscriber(ObjectType::Table, Database::Customer, 'OnAfterInsertEvent', '', true, true)]
    procedure FavoriteBookHintCustomerOnAfterInsertEvent(var Rec: Record Customer)
    begin
        if Rec."Favorite Book No." = '' then
            Message(FavoriteBookHintMsg, Rec.FieldCaption("Favorite Book No."));
    end;

    var
        FavoriteBookHintMsg: Label 'Don''t forget to enter a favorite book';

}