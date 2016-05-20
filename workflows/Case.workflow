<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Notifies_necessary_parties_of_new_ASRP_Edge_Points_Request</fullName>
        <description>Notifies necessary parties of new ASRP/Edge Points Request</description>
        <protected>false</protected>
        <recipients>
            <field>Admin_Case_Owner_Email__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <field>Manager__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/ASRP_Edge_Points_Request_email_template</template>
    </alerts>
    <fieldUpdates>
        <fullName>ASRP_Edge_Points_Admin_Case_Owner</fullName>
        <description>Populates email address for admin case owner</description>
        <field>Admin_Case_Owner_Email__c</field>
        <formula>CASE( 
Admin_Case_Owner__c, 
&quot;Stephen Sharp&quot;,&quot;Stephen.Sharp@delta.com&quot;,
&quot;Ryan Dieckernd&quot;,&quot;Ryan.Dieckbernd@delta.com&quot;,
NULL)</formula>
        <name>ASRP/Edge Points - Admin Case Owner</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>ASRP%2FEdge Points Request email alert</fullName>
        <actions>
            <name>Notifies_necessary_parties_of_new_ASRP_Edge_Points_Request</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>ASRP_Edge_Points_Admin_Case_Owner</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>ASRP/Edge Points Request</value>
        </criteriaItems>
        <description>Email alert for Requestor, Requestor manager, Admin Case Owner, and Email to GSAE or GAM if necessary</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
