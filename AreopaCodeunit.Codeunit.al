codeunit 50114 "AreopaCodeunit"
{
    procedure MyProcedure()
    var
        Customer: Record Customer;
        AreopaCodeunit: Codeunit AreopaCodeunit;
        IsHandled: Boolean;
    begin
        OnBeforeCode(Customer, IsHandled);

        If not IsHandled then
            Code(Customer);

        AreopaCodeunit.Proc1('Test');
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeCode(Customer: Record Customer; var IsHandled: Boolean)
    begin
    end;

    local procedure Code(Customer: Record Customer)
    begin
        Error('Procedure Code not implemented.');
    end;

    internal procedure Proc1(arg: Text)
    begin
        Error('Procedure Proc1 not implemented.');
    end;
}