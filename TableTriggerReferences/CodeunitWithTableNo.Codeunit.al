codeunit 50110 "CodeunitWithTableNo"
{
    TableNo = "Table Triggers";

    trigger OnRun()
    var
        Vendor: Record Vendor;
    begin
        Insert(true); //implicit
        Rec.Insert(true);
        Rec.Insert(false);
        with Vendor do
            Insert();

        with Vendor do begin
            Insert();
        end;
    end;
}