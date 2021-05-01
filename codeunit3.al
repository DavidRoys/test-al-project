codeunit 50106 MyCodeunit3
{
    trigger OnRun()
    var
        Customer: Record Customer;
        Item: Record Item;
    begin
        if (MissingProcedureInLogicalOrStatement() or true) or
            (MissingProcedureInLogicalAndStatement() and true) or
            not MissingProcedureWithUnaryNotExpression() or
            (MissingProcedureLessThanExpression() < 5) or
            (MissingProcedureLessOrEqualsThanExpression() <= 5) or
            (MissingProcedureGreatherThanExpression() > 5) or
            (MissingProcedureGreatherOrEqualsThanExpression() >= 5) or
            (MissingProcedureEqualsExpression() = 5) or
            (MissingProcedureNotEqualsExpression() <> 5)
        then begin
            OnBeforeEditMyInt();
            myInt := 5;
            OnAfterEditMyInt();
            Item.Insert(true);
            MyProcedure();
            MyProcedure(Customer);
        end;
    end;

    var
        myInt: Integer;
}
codeunit 50109 TestMe
{
    local procedure MyProcedure()
    var
        Item: Record Item;
    begin
    end;

    local procedure MyProcedure(Customer: Record Customer)
    begin
    end;

    local procedure TestMe()
    begin
        MyProcedure();
    end;
}