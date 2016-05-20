<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Date_Status_Changed_Update</fullName>
        <description>Changes the Date Status Last Modified field to Today</description>
        <field>Date_Status_last_modified__c</field>
        <formula>TODAY()</formula>
        <name>Date Status Changed Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Request Status Last Modified</fullName>
        <actions>
            <name>Date_Status_Changed_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Fills in the date the status was last changed in a Request record</description>
        <formula>ISCHANGED ( Status__c )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Urgent Request</fullName>
        <actions>
            <name>Urgent_Request_Alert</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 OR 2</booleanFilter>
        <criteriaItems>
            <field>Request__c.Urgent_Request__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Request__c.Priority__c</field>
            <operation>equals</operation>
            <value>Critical</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
