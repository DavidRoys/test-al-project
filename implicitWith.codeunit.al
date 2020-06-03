codeunit 50105 ImplicitWithCodeunit
{
    TableNo = Customer;

    trigger OnRun()
    begin
        SetRange("No.", '10000', '20000');
        if Find() then
            repeat
            until Next() = 0;
        if IsDirty() then
            Message('Something is not clean');

    end;

    local procedure IsDirty(): Boolean
    begin
        Error('Procedure not implemented.');
    end;
}