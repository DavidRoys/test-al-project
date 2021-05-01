report 50101 "TableTriggers"
{
    UsageCategory = Administration;
    ApplicationArea = All;


    dataset
    {
        dataitem(DataItemTableTriggers; "Table Triggers")
        {
            column(ColumnName; MyField)
            {

            }
            trigger OnAfterGetRecord()
            begin
                DataItemTableTriggers.Insert(true); //reference of onInsert
                DataItemTableTriggers.Insert(false); //not a reference of onInsert
            end;
        }
    }
}