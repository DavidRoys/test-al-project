codeunit 50102 TestCodeunit
{
    Subtype = Test;

    [Test]
    [HandlerFunctions('ConfirmHandler,MPHandler')]
    procedure "Given Some State_When Some Action_Then Expected Output"()
    begin
        TestfuncInTestProcedure();
        // [GIVEN] Given Some State 
        // [WHEN] When Some Action 
        // [THEN] Then Expected Output 
    end;

}