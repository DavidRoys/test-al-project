//First Line has Comments	Line 0
codeunit 50100 "FirstCodeunit"
{
    procedure MethodWithParameterIncludingBrackets(PosPrinter: Option " ","TM-T88R"; LineDisplay: Option " ","DM-D101","IBM VFD (serielle Direktverbindung)")
    begin
        creatableProcedure();
    end;

    trigger onRun()
    begin
        myProcedure(5);
    end;

    local procedure myProcedure(intParam: Integer): Integer
    var
        myInt: Integer;
    begin
        myInt := intParam;
        exit(myInt);
    end;

    local procedure myProcedureWithTwoParams(intParam: Integer; textParam: Text): Integer
    begin
        exit(5);
    end;

    local procedure procedureCalls()
    var
        SecondCodeunit: Codeunit SecondCodeunit;
        myText: Text[20];
    begin
        MissingProcedureWithoutParameters();

        MissingProcedureWithParameter(myInteger);

        MissingProcedureWithParameters(myInteger, myBoolean);

        myText := MissingProcedureWithReturn1(myInteger);
        "myText" := MissingProcedureWithReturn2(myInteger);

        MyTable.MyField := MissingProcedureWithFieldReturn1(myInteger);
        "MyTable".MyField := MissingProcedureWithFieldReturn2(myInteger);
        MyTable."MyField" := MissingProcedureWithFieldReturn3(myInteger);

        SecondCodeunit.MissingProcedureOfOtherObject(myInteger, myBoolean);

        myText := SecondCodeunit.MissingProcedureOfOtherObjectWithReturn(myInteger, myBoolean);

        MissingProcedureWithProcedureCallInside(myProcedure(5));

        MissingProcedureWithProcedureCallInside2(myProcedureWithTwoParams(5, 'text'), myInteger);

        MissingProcedureWithProcedureCallInside3(SecondCodeunit.myProcedure(5, 'text'), myInteger);

        myProcedure(MissingProcedureWithDirectlyUsedReturnValue());

        MultilineProcedureCall(
            myInt,
            myBoolean
        );

        MissingProcedureWithFieldsOfOtherAppAsParameter(Customer."No.", customer.Reserve);
        MissingProcedureWithFieldsOfSameAppAsParameter(MyTable."MyField");

        MissingProcedureWithTwoFieldsWithSameNameAsParameter(Customer."No.", Vendor."No.");

    end;

    var
        Customer: Record Customer;
        Vendor: Record Vendor;
        MyTable: Record MyTable;
        myInteger: Integer;
        myBoolean: Boolean;



}