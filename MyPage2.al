page 50106 MyPage2
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = MyTable;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Name; "No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Some Tooltip';
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
                        CodeunitToExtract: Page MyPage2;
                    begin
                        testproc();
                        Rec.testproc2();
                        CodeunitToExtract.test();
                        MissingProcedureWithRecsAsParameter(Rec, xRec);
                    end;
                }
                field(NewValue; CalcValue())
                {
                    Caption = 'New Value';
                    ToolTip = 'Some Tooltip';
                }
            }
        }
    }

    var
        myInt: Integer;
        MyTable: Record MyTable;


}