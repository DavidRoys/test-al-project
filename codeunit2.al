codeunit 50101 SecondCodeunit
{
    internal procedure myProcedure(myInteger: Integer; myText: Text): Integer
    var
        i: Integer;
    begin
        if i = 0 then begin

        end;
        i := i;
        myText := 'Hello World';
    end;

    local procedure myProcedure2(myText: Text)
    var
        Item: Record Item;
        myLabel: Label 'some text';
        myInt, Myi : Integer;
    begin
        myText := 'Hello World';
        myI := 5;
        myInt := 5;
        myText := myLabel;
        Item.Insert();
    end;

}