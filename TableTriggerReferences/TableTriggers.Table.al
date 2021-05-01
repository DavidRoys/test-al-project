table 50101 "Table Triggers"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; MyField; Integer)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                Insert(true); //implicit Rec
                Insert(false); //shouldn't be referenced
                with Rec do
                    Insert(true); //explicit Rec
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

    trigger OnInsert()
    begin
    end;

    trigger OnModify()
    begin
    end;

    trigger OnRename()
    begin
    end;

    procedure myInsertTestProcedure()
    begin
        Init();
        Insert(true);
        Rec.GetLastOne().Insert(true);
        Rec.GetLastOne().Insert(false);
    end;

    procedure
    GetLastOne(


   )
   LastTableData
   : Record "Table Triggers"
    begin

    end;
}