codeunit 50112 "TestModifyProcedure_Internal"
{
    Access = Internal;
    local procedure Caller()
    var
        Customer: Record Customer;
        Vendor: Record Vendor;
        TestModifyProcedure_Public: Codeunit TestModifyProcedure_Public;
        MyText: Text;
        MyBool: Boolean;
        IsHandled: Boolean;
    begin
        LocalProcedureOneParam(Customer, MyBool);
        LocalProcedureOneParam(Customer, MyText);
        LocalProcedureOneParam(Customer, IsHandled);
        LocalProcedureOneParam(Customer, MyBool, Vendor);
        PublicProcedureOneParam(Customer, MyBool);
        OnPost(Customer, MyBool);
        TestModifyProcedure_Public.PublicProcedureOneParam(Customer, MyBool);
        TestModifyProcedure_Public.PublicProcedureOneParam(Customer, MyBool, Vendor);
        Customer.CalcAvailableCredit(MyBool);
    end;

    local procedure LocalProcedureOneParam(Customer: Record Customer)
    begin
        Error('Procedure ProcedureOneParam not implemented.');
    end;

    procedure PublicProcedureOneParam(Customer: Record Customer) //create overload
    begin
        Error('Procedure PublicProcedureOneParam not implemented.');
    end;

    [IntegrationEvent(false, false)]
    local procedure OnPost(Customer: Record Customer)
    begin
    end;
}