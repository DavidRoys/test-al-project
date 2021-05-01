page 50104 "TableTriggers"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Table Triggers";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Name; Rec.MyField)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    begin
        Insert(false);
        Insert(true);
    end;

    procedure CreateRec()
    begin
        Rec.Insert(false);
        Rec.Insert(true);
    end;
}