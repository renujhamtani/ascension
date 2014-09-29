_           = require 'lodash'
settings    = require '../settings/settings'
moment      = require 'moment'
logger      = require('tracer').colorConsole(exports.logger_config)
prettyjson  = require 'prettyjson'
TaskRules   = require '../rules/taskRules'


TaskUtils = {}

TaskUtils.generateMockTask = (overrides) ->
  c =
    AccountId: '001A000000K6SyqIAF'
    Account_Number__c: '1301972'
    CaseNumber: '00024904'
    Collaboration_Score__c: 2334
    Comment_Count__c: 5
    CreatedDate: new Date(2014, 5, 5)
    Created_By__c: 'Yann Albou'
    FTS_Role__c: null
    FTS__c: false
    Last_Breach__c: null
    PrivateCommentCount__c: 2
    PublicCommentCount__c: 3
    SBT__c: 1000
    SBR_Group__c: ['JBoss Base AS', 'Webservers']
    Severity__c: '3 (Normal)'
    Status: 'Waiting on Red Hat'
    Internal_Status__c: 'Unassigned'
    Strategic__c: 'Yes'
    Tags__c: ['httpd']

  if overrides?.case?
    _.assign c, overrides['case']

  t = TaskRules.makeTaskFromCase c

  if overrides?.task?
    _.assign t, overrides['task']

  t

module.exports = TaskUtils
