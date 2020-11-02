page 50100 MyPage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Vendor;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Name; "No.")
                {
                    ApplicationArea = All;
                    TableRelation = Customer."No." where("No." = field("No."));
                    trigger OnLookup(var Text: Text): Boolean
                    var
                        Item: Record Item;
                    begin
                        Text := 'a';
                        Text := 'Hi' + Text;
                        Insert(); //implicit
                        Item.Insert();
                        Item.Validate("No.", 'Test');
                        Item.Validate(Item.NewField, 5);
                    end;

                    trigger OnAssistEdit()
                    var
                        myBoolean: Boolean;
                    begin
                        testproc();
                        MissingProcedureWithRecsAsParameter(Rec, xRec);
                    end;
                }
            }
        }
    }

    var
        myInt: Integer;
}