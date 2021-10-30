//Tests for feature to resolve CodeCop Rule AA0470 Placeholders should have a comment explaining their content. https://docs.microsoft.com/en-us/dynamics365/business-central/dev-itpro/developer/analyzers/codecop-aa0470-placeholdershouldhavecommentexplainingcontent
/*
    There are many different ways of using placeholders:
        - Message()
        - Confirm()
        - Error()
        - StrSubstNo()

    However, because the extension is only putting placeholders in based upon the string part and not the
    other parameters, we don't need to worry about testing these different functions. Instead the tests will
    focus on different numbers of placeholders: none, one, two, maximum allowed, more than maximum allowed. We
    will also look at using the same placeholder number more than once and out of order.
*/
codeunit 50115 extractLabelWithPlaceholders
{
    local procedure NoLocalVarSection()
    var
        Test1txt: Label 'No Local Var Section end.';
        Test2txt: Label 'No Local Var Section %1 end.', Comment = '%1=';
        Test3txt: Label 'No Local Var Section %1 and %2 end.', Comment = '%1=; %2=';
        Test4txt: Label 'No Local Var Section %1 and %2 and %3 and %4 and %5 and %6 and %6 and %7 and %8 and %9 and %10 end.', Comment = '%1=; %2=; %3=; %4=; %5=; %6=; %7=; %8=; %9=; %10=';
        Test5txt: Label 'No Local Var Section %1 and %1 and %3 and %4 and %5 and %6 and %6 and %7 and %8 and %9 and %10 and %11 end.', Comment = '%1=; %2=<not used>; %3=; %4=; %5=; %6=; %7=; %8=; %9=; %10=; %11=';
        Test6txt: Label 'No Local Var Section %1 and %1 and %5 and %4 and %2 and %2 and %7 and %1 and %2 end.', Comment = '%1=; %2=; %3=<not used>; %4=; %5=; %6=<not used>; %7=';
        Test7txt: Label 'No Local Var Section %2 and %1 end.', Comment = '%1=; %2=';
    begin
        Message(Test1txt);
        Message(Test2txt, 1);
        Message(Test3txt, 1, 2);
        Message(Test4txt, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
        Message(Test5txt, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11);
        Message(Test6txt, 1, 2, 3, 4);
        Message(Test7txt, 1, 2);
    end;

    local procedure LocalVarSection()
    var
        MyLocalInteger: Integer;
    begin
        Message('Local Var Section end.');
        Message('Local Var Section %1 end.', 1);
        Message('Local Var Section %1 and %2 end.', 1, 2);
        Message('Local Var Section %1 and %2 and %3 and %4 and %5 and %6 and %6 and %7 and %8 and %9 and %10 end.', 1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
        Message('Local Var Section %1 and %2 and %3 and %4 and %5 and %6 and %6 and %7 and %8 and %9 and %10 and %11 end.', 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11);
        Message('Local Var Section %1 and %1 and %3 and %4 and %2 and %2 and %3 and %1 and %2 end.', 1, 2, 3, 4);
        Message('Local Var Section %2 and %1 end.', 1, 2);
    end;

}