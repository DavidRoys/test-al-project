page 50102 MySalesSubpage
{
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Sales Line";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Name; Rec."No.")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}