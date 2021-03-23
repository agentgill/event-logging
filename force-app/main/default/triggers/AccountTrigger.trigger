/**
 * @description       : AccountTrigger
 * @author            : agentgill
 * @group             :
 * @last modified on  : 03-23-2021
 * @last modified by  : agentgill
 * Modifications Log
 * Ver   Date         Author      Modification
 * 1.0   03-23-2021   agentgill   Initial Version
 **/
trigger AccountTrigger on Account(
    before insert,
    after insert,
    before update,
    after update
) {
    new AccountTriggerHandler().run();
}
