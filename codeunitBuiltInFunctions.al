codeunit 50108 "BuiltInFunctions"
{
    TableNo = Vendor;

    trigger OnRun()
    begin
        Insert(); //implicit
        Rec.Insert();
    end;

    local procedure CallBuiltInFunctions(Item: Record Item)
    begin
        Customer.Insert;
        Customer.Insert();
        customer.Insert(false);
        MyTable.Insert();
        // No onDelete exists
        MyTable.Delete();
        MyTable.Validate(MyField, 5);
        MyTable.Validate(MyTable.MyField, 5);

        with MyTable do begin
            Insert(); //explicit
        end;
    end;

    [EventSubscriber(ObjectType::Table, Database::Item, 'OnBeforeInsertEvent', '', false, false)]
    local procedure Item_OnBeforeInsertEvent(RunTrigger: Boolean; var Rec: Record Item)
    begin

    end;

    var
        Customer: Record Customer;
        MyTable: Record MyTable;
}