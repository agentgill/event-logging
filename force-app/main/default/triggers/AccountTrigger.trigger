/**
 * @description       :
 * @author            : agentgill
 * @group             :
 * @last modified on  : 12-25-2020
 * @last modified by  : agentgill
 * Modifications Log
 * Ver   Date         Author      Modification
 * 1.0   12-25-2020   agentgill   Initial Version
 **/
trigger AccountTrigger on Account(
    before insert,
    after insert,
    before update,
    after update
) {
    new AccountTriggerHandler().run();
}
