codeunit 50106 MyCodeunit3
{
    trigger OnRun()
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
        end;
    end;

    var
        myInt: Integer;

    local procedure MyProcedure()
    begin
    end;
}