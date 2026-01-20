@IsTest
private class TaskUtilTests {
    @IsTest
    // Tests getTaskPriority method returning 'Normal'
    static void testGetTaskPriorityNormal() {
        String state = 'MA';
        Test.startTest();
        String taskPriority = TaskUtil.getTaskPriority(state);
        Test.stopTest();
        Assert.areEqual('Normal', taskPriority, 'Task priority is not Normal as expected.');

    }
    @IsTest
    // Tests getTaskPriority method returning 'High'
    static void testGetTaskPriorityHigh() {
        String state = 'CA';
        Test.startTest();
        String taskPriority = TaskUtil.getTaskPriority(state);
        Test.stopTest();
        Assert.areEqual('High', taskPriority, 'Task priority is not High as expected.');

    }
}