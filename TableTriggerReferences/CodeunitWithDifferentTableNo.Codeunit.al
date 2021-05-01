codeunit 50108 "CodeunitWithDifferentTableNo"
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
        TableTriggers.Insert();
        TableTriggers.Insert(true);
        TableTriggers.Modify();
        TableTriggers.Modify(true);
        TableTriggers.ModifyAll(MyField, 5, false);
        TableTriggers.ModifyAll(MyField, 5, true);
        // No onDelete exists
        TableTriggers.Delete();
        TableTriggers.Validate(MyField, 5);
        TableTriggers.Validate(TableTriggers.MyField, 5);

        with TableTriggers do begin
            Insert(true); //explicit should be referenced
            Insert(false); //explicit should not be referenced
            Insert;
            Validate(MyField, 5);
        end;
    end;

    [EventSubscriber(ObjectType::Table, Database::"Table Triggers", 'OnBeforeInsertEvent', '', false, false)]
    local procedure TableTriggers_OnBeforeInsertEvent(RunTrigger: Boolean; var Rec: Record "Table Triggers")
    begin

    end;

    [EventSubscriber(ObjectType::Table, Database::"Table Triggers", 'OnAfterModifyEvent', '', false, false)]
    local procedure TableTriggers_OnBeforeModifyEvent(RunTrigger: Boolean; var Rec: Record "Table Triggers")
    begin

    end;

    [EventSubscriber(ObjectType::Table, Database::Item, 'OnBeforeInsertEvent', '', false, false)]
    local procedure Item_OnBeforeInsertEvent(RunTrigger: Boolean; var Rec: Record Item)
    begin

    end;

    [EventSubscriber(ObjectType::Table, Database::Item, 'OnAfterInsertEvent', '', false, false)]
    local procedure Item_OnAfterInsertEvent(RunTrigger: Boolean; var Rec: Record Item)
    begin

    end;

    [EventSubscriber(ObjectType::Table, Database::Item, 'OnBeforeValidateEvent', 'No.', false, false)]
    local procedure Item_OnAfterValidateEvent_No(CurrFieldNo: Integer; var Rec: Record Item; var xRec: Record Item)
    begin

    end;

    var
        Customer: Record Customer;
        TableTriggers, TableTriggers2, TableTriggers3 : Record "Table Triggers";
}