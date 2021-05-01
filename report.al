report 50100 MyReport
{
    UsageCategory = Administration;
    ApplicationArea = All;

    dataset
    {
        dataitem(DataItemName; MyTable)
        {
            column(ColumnName; MyField)
            {

            }
            trigger OnAfterGetRecord()
            begin
                DataItemName.Insert(true); //reference of onInsert
                DataItemName.Insert(false); //not a reference of onInsert
            end;
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    field(Name; myInt)
                    {
                        ApplicationArea = All;
                        trigger OnValidate()
                        begin

                        end;
                    }
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;
                    trigger OnAction()
                    begin

                    end;
                }
            }
        }

        var
            myInteger: Integer;
            myInteger2: Integer;

    }

    var
        myInt: Integer;
}