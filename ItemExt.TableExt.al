tableextension 50100 "ItemExt" extends Item
{
    fields
    {
        modify("No.")
        {
            trigger OnAfterValidate()
            begin

            end;

            trigger OnBeforeValidate()
            begin

            end;
        }
        field(50100; NewField; Integer)
        {
            trigger OnValidate()
            begin

            end;
        }
    }

    trigger OnInsert()
    begin

    end;

    trigger OnAfterInsert()
    begin

    end;

    trigger OnBeforeInsert()
    begin

    end;

}