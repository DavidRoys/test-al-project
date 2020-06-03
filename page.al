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
                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        Text := 'a';
                        Text := 'Hi' + Text;
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