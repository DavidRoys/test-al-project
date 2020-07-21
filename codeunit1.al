//First Line has Comments	Line 0
codeunit 50100 "FirstCodeunit"
{
    TableNo = MyTable;

    procedure MethodWithParameterIncludingBrackets(PosPrinter: Option " ","TM-T88R"; LineDisplay: Option " ","DM-D101","IBM VFD (serielle Direktverbindung)")
    begin
        creatableProcedure(LineDisplay);
    end;

    trigger onRun()
    var
        MyCode5Variable: Code[5];
    begin
        MyCode5Variable := MyNewFunction('CCCCC'); //missing
        ProcedureWithRecInOnRunTrigger(Rec);
    end;

    local procedure MyNewFunction(arg: Text): Code[5]
    begin
        Error('Procedure not implemented.');
    end;

    local procedure myProcedure(var intParam: Integer): Integer
    var
        myInt: Integer;
        myList: List of [Integer];
        CustomerList: Page "Customer List";
    begin
        myInt := intParam;
        case myInt of
            5:
                intParam := Customer."Statistics Group";
            7, 8:
                intParam := Customer."Statistics Group";
            else
                intParam := Customer."Statistics Group";
        end;
        for myInt := 5 downto 8 do
            intParam := Customer."Statistics Group";

        foreach myInt in myList do
            intParam := Customer."Statistics Group";

        if myInt = 5 then
            intParam := 6
        else begin
            intParam := Customer."Statistics Group";
        end;
        while myInt = 5 do
            myInt := Customer."Statistics Group";
        myInt := Customer."Statistics Group";
        CustomerList.ExistingProcedure();
        exit(MissingProcedureInExitStatement());
    end;

    local procedure myProcedureWithTwoParams(intParam: Integer; textParam: Text): Integer
    begin
        exit(5);
    end;

    local procedure procedureCalls(var "Pass Nos.": Code[20])
    var
        FirstCodeunit: Codeunit FirstCodeunit;
        SecondCodeunit: Codeunit SecondCodeunit;
        SalesOrderTestPage: TestPage "Sales Order";
        myOption: Option Manual,"Apply Test";
        myText: Text[20];
        "No.": Code[20];
        myDecimal1, myDecimal2 : Decimal;
        TempMyTable: Record MyTable temporary;
        SalesLine: Record "Sales Line";
        Länge: Integer;
    begin
        MissingProcedureWithoutParameters();

        MissingProcedureWithParameter(myInteger);

        MissingProcedureWithParameters(myInteger, myBoolean);
        MissingProcedureWithEnum(MyEnum::MyValue);

        myText := MissingProcedureWithReturn1(myInteger);
        "myText" := MissingProcedureWithReturn2(myInteger, Länge);
        //LineComment
        myText := MissingProcedureWithReturn3(myInteger);
        /*
        BlockComment
        */
        myText := MissingProcedureWithReturn4(myInteger);

        MyTable.MyField := MissingProcedureWithFieldReturn1(myInteger);
        "MyTable".MyField := MissingProcedureWithFieldReturn2(myInteger);
        MyTable."MyField" := MissingProcedureWithFieldReturn3(myInteger);

        MissingProcedureWithDotInVariableName("Pass Nos.");

        SecondCodeunit.MissingProcedureOfOtherObject(myInteger, myBoolean);
        EmptyCodeunit.MissingProcedureOfEmptyCodeunit();

        myText := SecondCodeunit.MissingProcedureOfOtherObjectWithReturn(myInteger, myBoolean);
        myText := FirstCodeunit.MissingPublicProcedureOfSameObjectWithReturn(myInteger, myBoolean);

        MissingProcedureWithProcedureCallInside1(myProcedure(5));
        MissingProcedureWithProcedureCallInside2(myProcedureWithTwoParams(5, 'text'), myInteger);
        MissingProcedureWithProcedureCallInside3(SecondCodeunit.myProcedure(5, 'text'), myInteger);

        myProcedureWithTwoParams(1, MissingProcedureWithDirectlyUsedReturnValue());
        SecondCodeunit.myProcedure(1, MissingProcedureWithDirectlyUsedReturnValueInMemberExpression());
        MultilineProcedureCall(
            myInteger,
            myBoolean
        );
        MissingProcedureWithFieldsOfOtherAppAsParameter(Customer."No.", customer.Reserve, Customer."Application Method", Customer.Reserve::Always);
        MissingProcedureWithFieldsOfSameAppAsParameter(MyTable."MyField");

        MissingProcedureWithTwoFieldsWithSameNameAsParameter1(Customer."No.", Vendor."No.");
        MissingProcedureWithTwoFieldsWithSameNameAsParameter2(Customer."No.", "No.");
        MissingProcedureWithQuotedNameAsParameter(SalesOrderTestPage);

        MissingProcedureWithPrimitiveTypes('Hello World!', 5, 5.3, true);
        if MissingProcedureInsideIfStatement() then
            Customer.test(5);
        myBoolean := MissingProcedureInAssignmentStatement();
        myBoolean := (MissingProcedureInLogicalOrStatement() or true) or (MissingProcedureInLogicalAndStatement() and true) or not MissingProcedureWithUnaryNotExpression() or
            (MissingProcedureLessThanExpression() < 5) or (MissingProcedureLessOrEqualsThanExpression() <= 5) or (MissingProcedureGreatherThanExpression() > 5) or
            (MissingProcedureGreatherOrEqualsThanExpression() >= 5) or (MissingProcedureEqualsExpression() = 5) or (MissingProcedureNotEqualsExpression() <> 5);
        myInteger := MissingProcedureInAddExpression() + 5;
        myDecimal1 := MissingProcedureWithVariableListDeclaredVariables(myDecimal1) + myDecimal2;

        MissingProcedureWithTempRec(TempMyTable);
        myBoolean := (MissingProcedureInParenthesis());
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"CustVendBank-Update", 'OnAfterUpdateCustomer', '', false, false)]
    procedure OnAfterUpdateCustomer(var Customer: Record Customer; Contact: Record Contact);
    begin
        testfuncInSubscriber();
    end;


    var
        Customer: Record Customer;
        Vendor: Record Vendor;
        MyTable: Record MyTable;
        myInteger: Integer;
        myBoolean: Boolean;
        EmptyCodeunit: Codeunit EmptyCodeunit;
}