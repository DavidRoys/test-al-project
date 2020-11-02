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
                Page.RunModal(Page::MyPage, Rec);
                MissingProcedureWithRecsAsParameter(Rec, xRec);

                with Rec do
                    myBoolean := MyField = 5;

                Insert(); //implicit Rec
                with Rec do
                    Insert(); //explicit Rec
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

    trigger OnRename()
    begin

    end;

    var
        PageManagement: Codeunit "Page Management";
}