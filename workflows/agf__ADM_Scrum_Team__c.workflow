<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <rules>
        <fullName>agf__Set program initial section headers</fullName>
        <active>false</active>
        <criteriaItems>
            <field>agf__ADM_Scrum_Team__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Program</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>agf__Update Record Type Copy</fullName>
        <actions>
            <name>agf__Update_Record_Type_Copy</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>agf__ADM_Scrum_Team__c.RecordTypeId</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
