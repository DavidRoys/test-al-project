page 50101 ImplicitWithPage
{
    SourceTable = Customer;

    layout
    {
        area(Content)
        {
            field("No."; "No.") { }
            field(Name; Name)
            {
                trigger OnValidate()
                begin
                    Name := 'test';
                end;
            }
        }
    }
    trigger OnInit()
    begin
        if IsDirty() then Insert();
    end;

    local procedure IsDirty(): Boolean
    var
        Vendor: Record Vendor;
        Item: Record Item;
    begin
        with Vendor do begin
            Rec.Name := Name;
            With Item do begin
                if "Unit Cost" = 0 then
                    Name := 'Empty Cost';
            end;
        end;
        Exit(true);
    end;
}