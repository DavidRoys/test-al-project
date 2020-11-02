codeunit 50101 SecondCodeunit
{
    procedure myProcedure(myInteger: Integer; myText: Text): Integer
    begin
        myText := 'Hello World';
    end;

    local procedure myProcedure2(myText: Text)
    var
        Item: Record Item;
        myLabel: Label 'some text';
        myInt, myI : Integer;
    begin
        myText := 'Hello World';
        myI := 5;
        myInt := 5;
        myText := myLabel;
        Item.Insert();
    end;

}