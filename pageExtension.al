pageextension 50100 CustomerListExtension extends "Customer List" //50000
{
    layout
    {
        addafter(Name)
        {
            field(myInt; myInt)
            {
                ApplicationArea = All;
                trigger OnAssistEdit()
                begin
                    CreatableProcedure1();
                end;

                trigger OnDrillDown()
                begin
                    CreatableProcedure2();
                end;
            }
        }
    }


    actions
    {
        addafter("&Customer")
        {
            group("Test")
            {
                Caption = 'Testgroup';
                action(ActionName)
                {
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        CreatableProcedure3();
                    end;
                }
            }
        }
    }

    var
        myInt: Integer;

    local procedure ExistingProcedure()
    begin
        CreatableProcedure4();
    end;
}