/**
 * @description       :
 * @author            : agentgill
 * @group             :
 * @last modified on  : 03-23-2021
 * @last modified by  : agentgill
 * Modifications Log
 * Ver   Date         Author      Modification
 * 1.0   03-23-2021   agentgill   Initial Version
 **/
public inherited sharing class AccountTriggerHandler extends TriggerHandler {
    public override void beforeInsert() {
        for (Account a : (List<Account>) Trigger.new) {
        }
    }

    public override void beforeUpdate() {
        for (Account a : (List<Account>) Trigger.new) {
            // Publish log instance
            Log.get().publish('DEMO');

            // Publish an instance with Severity
            Log logger = Log.get();
            logger.add('Testing 123', LogSeverity.WARN);
            logger.publish();

            // Publish an instance with Severity
            Log logger2 = Log.get();
            logger2.add(
                'Testing 123',
                LogSeverity.INFO,
                'AccountTriggerHandler'
            );
            logger2.publish();
        }
    }

    public override void afterInsert() {
        for (Account a : (List<Account>) Trigger.new) {
        }
    }
    public override void afterUpdate() {
        for (Account a : (List<Account>) Trigger.new) {
        }
    }
}
