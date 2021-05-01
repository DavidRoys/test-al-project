codeunit 50107 CodeunitToExtract
{
    trigger OnRun();
    var
        Customer: Record Customer;
        start, addend : Integer;
        result: Integer;
    begin
        start := 4;
        addend := 6;
        result := start + (addend - 1) + 1;
        procedureWithOneParameterByValue(Customer);
        Message('Result: %1', result);

        if not (1 in [2, 3]) then begin
        end;
    end;

    procedure testProcedureWithOneParameterByValue()
    var
        Customer: Record Customer;
    begin
        procedureWithOneParameterByValue(Customer);
        Customer.Name := 'Test';
        Customer.Insert();
    end;

    procedure testProcedureWithTwoParametersByValue()
    var
        Customer: Record Customer;
    begin
        procedureWithTwoParametersByValue(5, Customer);
        Customer.Name := 'Test';
        Customer.Insert();
    end;

    procedure testProcedureWithMultilineParametersByValue()
    var
        Customer: Record Customer;
    begin
        procedureWithTwoParametersByValue(
            5,
            Customer);
        Customer.Name := 'Test';
        Customer.Insert();
    end;

    procedure procedureWithOneParameterByValue(Customer: Record Customer)
    begin

    end;

    procedure procedureWithTwoParametersByValue(Int: Integer; Customer: Record Customer)
    begin

    end;

    procedure testProcedureWithOneParameterByReference()
    var
        Customer: Record Customer;
    begin
        procedureWithOneParameterByReference(Customer);
        Customer.Name := 'Test';
        Customer.Insert();
    end;

    procedure testProcedureWithTwoParametersByReference()
    var
        Customer: Record Customer;
    begin
        procedureWithTwoParametersByReference(5, Customer);
        Customer.Name := 'Test';
        Customer.Insert();
    end;

    procedure testProcedureWithMultilineParametersByReference()
    var
        Customer: Record Customer;
    begin
        procedureWithTwoParametersByReference(
            5,
            Customer);
        Customer.Name := 'Test';
        Customer.Insert();
    end;

    procedure procedureWithOneParameterByReference(var Customer: Record Customer)
    begin
        // some filtering
    end;

    procedure procedureWithTwoParametersByReference(Int: Integer; var Customer: Record Customer)
    begin
        // some filtering
    end;

    procedure testProcedureWithCodeunitAsParameter()
    var
        CodeunitToExtract: Codeunit CodeunitToExtract;
    begin
        procedureWithCodeunitAsParameter(CodeunitToExtract);
        CodeunitToExtract.procedureWithCodeunitAsParameter(CodeunitToExtract);  //extract this line
    end;

    procedure procedureWithCodeunitAsParameter(CodeunitToExtract: Codeunit CodeunitToExtract)
    begin
        // some filtering
    end;

    procedure testProcedureWithPageAsParameter()
    var
        MyPage: Page MyPage;
    begin
        procedureWithPageAsParameter(MyPage);
        MyPage.Run();  //extract this line
    end;

    procedure procedureWithPageAsParameter(MyPage: Page MyPage)
    begin
        // some filtering
    end;

    procedure testProcedureWithAssignmentBefore()
    var
        Customer: Record Customer;
    begin
        Customer.Name := 'Test';
        Customer.Insert();  //extract this line
    end;

    procedure testProcedureWithProcedureCallBefore()
    var
        Customer: Record Customer;
    begin
        Customer.IsBlocked();
        Customer.Name := 'Test'; //extract from this line
        Customer.Insert();  //to this line
    end;

    procedure testProcedureWithNotUsedFilteringBefore()
    var
        Customer: Record Customer;
    begin
        Customer.SetRange("No.", '10000');
        Customer.Name := 'Test'; //extract from this line
        Customer.Insert();  //to this line
    end;

    procedure testProcedureWithUsedFilteringBefore()
    var
        "Customer with Quotes": Record Customer;
        isCustomerEmpty: Boolean;
    begin
        "Customer with Quotes".SetRange("No.", '10000');
        "Customer with Quotes".Name := 'Test'; //extract from this line
        isCustomerEmpty := "Customer with Quotes".IsEmpty();  //to this line
    end;

    procedure testProcedureWithUsedValueAfterwards()
    var
        Customer, Customer2 : Record Customer;
    begin
        Customer.Name := 'Test'; //extract this line
        Customer.Insert();
    end;

    procedure testProcedureWithUsedReturnValue(var Customer: Record Customer temporary) myReturnValue: Code[20]
    begin
        myReturnValue := Customer."No."; //extract this line
    end;

    procedure testProcedureWithExplicitWith(var Customer: Record Customer temporary) myReturnValue: Code[20]
    begin
        with Customer do begin
            Name := 'Microsoft'; //extract this line
        end;
    end;
}