table 50100 MyTable
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; MyField; Integer)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                myPage: Page myPage;
                myBoolean: Boolean;
            begin
                myBoolean := CreatableProcedure1(MyField);
                Page.Run(Page::MyPage);
                MissingProcedureWithRecsAsParameter(Rec, xRec);
            end;
        }
    }

    keys
    {
        key(PK; MyField)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin
        MyField := CreatableProcedure2(MyField, myInt);
    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}