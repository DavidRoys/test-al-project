codeunit 50112 "TestModifyProcedure_Internal"
{
    Access = Internal;
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

    procedure PublicProcedureOneParam(Customer: Record Customer) //create overload
    begin
        Error('Procedure PublicProcedureOneParam not implemented.');
    end;
}