codeunit 50111 "Create PurchDocJobQueues DHB"
{
    TableNo = Customer;
    Access = Internal;

    trigger OnRun()
    var
        DMSPurchDocNoListL: List of [Text];
    begin

        OnTestFunction(Rec);
    end;
}