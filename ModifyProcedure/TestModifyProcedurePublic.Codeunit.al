codeunit 50113 "TestModifyProcedure_Public"
{
    local procedure Caller()
    var
        Customer: Record Customer;
        MyBool: Boolean;
    begin
        LocalProcedureOneParam(Customer, MyBool);
        PublicProcedureOneParam(Customer, MyBool);
    end;

    local procedure LocalProcedureOneParam(Customer: Record Customer)
    begin
        Error('Procedure ProcedureOneParam not implemented.');
    end;

    procedure PublicProcedureOneParam(Customer: Record Customer)
    begin
        Error('Procedure PublicProcedureOneParam not implemented.');
    end;
}