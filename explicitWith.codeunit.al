codeunit 50104 ExplicitWith
{
    procedure ProcessCustomer()
    var
        Customer: Record Customer;
    begin
        with Customer do begin
            if isDirty() then Insert();
        end;
    end;

    local procedure isDirty(): Boolean
    begin
        Error('Procedure not implemented.');
    end;
}