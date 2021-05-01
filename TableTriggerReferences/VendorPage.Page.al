page 50100 "VendorPage"
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
                    begin
                        testproc();
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