codeunit 50102 TestCodeunit
{
    Subtype = Test;

    [Test]
    [HandlerFunctions('MyConfirmHandler')]
    procedure "Given Some State_When Some Action_Then Expected Output"()
    // [FEATURE] MyFeature
    begin
        // [SCENARIO #0001] This is my scenario
        TestfuncInTestProcedure();
        // [GIVEN] Given Some State 
        GivenProcedure();
        // [WHEN] When Some Action 
        WhenProcedure();
        // [THEN] Then Expected Output 
    end;


    [Test]
    procedure SecondTestMethod()
    // [FEATURE] MyFeature
    begin
        // [SCENARIO #0001] This is my scenario
        TestfuncInTestProcedure();
        // [GIVEN] Given Some State 
        GivenProcedure();
        // [WHEN] When Some Action 
        WhenProcedure();
        // [THEN] Then Expected Output 
    end;
}