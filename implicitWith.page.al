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
    begin
        exit(Name <> '');
    end;
}