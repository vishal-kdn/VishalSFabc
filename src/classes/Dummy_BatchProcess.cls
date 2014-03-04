global class Dummy_BatchProcess implements Schedulable,Database.Batchable < sObject >, Database.AllowsCallouts , Database.Stateful
{
    public integer times;
    
    public Dummy_BatchProcess(integer t)
    {
        times=t;
    }
   
    global Database.QueryLocator start(Database.BatchableContext BC)
    {
        system.debug('-------Insidestart---------');
        return Database.getQueryLocator('select id, firstName, lastName, email, Username, ProfileId from user where IsActive = true AND email like \'%@passporttest%\' ORDER BY email ASC');
    }

    global void execute(Database.BatchableContext BC, List < sObject > batch)
    {
    	if(times ==9)
        {//for Group feeditem mention Link
            for (SObject s: batch)
            {
                user u = (user)s;
                String sessionid=fetchOrgName(u.username,false);
                //system.debug('Opp name is' + o.name);
                integer randnum;
                List<user> lsusr=[SELECT Alias,CompanyName,Country,CreatedDate,Email,FirstName,Id,IsActive,Name,Title,Username FROM User where IsActive=true and (profileid in (select id from Profile WHERE Name LIKE 'Chatter Free User' or Name LIKE 'Passport Chatter Profile'))];
                integer v=(lsusr.size()/4)>8?(lsusr.size()/16):(lsusr.size()/4);
                for(Integer i=0;i<lsusr.size();i=i+v)
                {
                      randnum=math.round((math.random()*lsusr.size())-1);
                      randnum=randnum>0?randnum:(math.round(lsusr.size()/2));
                      system.debug('\n\n\n------Sessionid-----'+sessionid);
                    processMentionAttachmentPost(lsusr[i],lsusr[randnum],'mention,poll','feed','group',sessionid);
                    //processMentionAttachmentPost(lsusr[i],lsusr[randnum],'mention,content','comment','user',sessionid);
                }
            }
           
        }
    	
    	if(times ==8)
        {//for Group feeditem mention Link
            for (SObject s: batch)
            {
                user u = (user)s;
                String sessionid=fetchOrgName(u.username,false);
                //system.debug('Opp name is' + o.name);
                integer randnum;
                List<user> lsusr=[SELECT Alias,CompanyName,Country,CreatedDate,Email,FirstName,Id,IsActive,Name,Title,Username FROM User where IsActive=true and (profileid in (select id from Profile WHERE Name LIKE 'Chatter Free User' or Name LIKE 'Passport Chatter Profile'))];
                integer v=(lsusr.size()/4)>8?(lsusr.size()/16):(lsusr.size()/4);
                for(Integer i=0;i<lsusr.size();i=i+v)
                {
                      randnum=math.round((math.random()*lsusr.size())-1);
                      randnum=randnum>0?randnum:(math.round(lsusr.size()/2));
                      system.debug('\n\n\n------Sessionid-----'+sessionid);
                    processMentionAttachmentPost(lsusr[i],lsusr[randnum],'mention,link','feed','group',sessionid);
                    //processMentionAttachmentPost(lsusr[i],lsusr[randnum],'mention,content','comment','user',sessionid);
                }
            }
           
        }
    	
    	if(times ==7)
        {//for passport chatter user comment
            for (SObject s: batch)
            {
                user u = (user)s;
                String sessionid=fetchOrgName(u.username,false);
                //system.debug('Opp name is' + o.name);
                integer randnum;
                List<user> lsusr=[SELECT Alias,CompanyName,Country,CreatedDate,Email,FirstName,Id,IsActive,Name,Title,Username FROM User where IsActive=true and (profileid in (select id from Profile WHERE Name LIKE 'Chatter Free User' or Name LIKE 'Passport Chatter Profile'))];
                integer v=(lsusr.size()/4)>8?(lsusr.size()/16):(lsusr.size()/4);
                System.debug('-----Increment -----'+v);
                for(Integer i=0;i<lsusr.size();i=i+v)
                {
                      randnum=math.round((math.random()*lsusr.size())-1);
                      randnum=randnum>0?randnum:(math.round(lsusr.size()/2));
                      system.debug('\n\n\n------Sessionid-----'+sessionid);
                    ProcessComment(lsusr[i],lsusr[randnum],sessionid);
                    //processMentionAttachmentPost(lsusr[i],lsusr[randnum],'mention,content','comment','user',sessionid);
                }
            }
           
        }
        
    	if(times ==6)
        {//for user feed mention poll
            for (SObject s: batch)
            {
                user u = (user)s;
                String sessionid=fetchOrgName(u.username,false);
                //system.debug('Opp name is' + o.name);
                integer randnum;
                List<user> lsusr=[SELECT Alias,CompanyName,Country,CreatedDate,Email,FirstName,Id,IsActive,Name,Title,Username FROM User where IsActive=true and (profileid in (select id from Profile WHERE Name LIKE 'Chatter Free User' or Name LIKE 'Passport Chatter Profile'))];
                integer v=(lsusr.size()/4)>8?(lsusr.size()/16):(lsusr.size()/4);
                for(Integer i=0;i<lsusr.size();i=i+v)
                {
                      randnum=math.round((math.random()*lsusr.size())-1);
                      randnum=randnum>0?randnum:(math.round(lsusr.size()/2));
                      system.debug('\n\n\n------Sessionid-----'+sessionid);
                    processMentionAttachmentPost(lsusr[i],lsusr[randnum],'mention,poll','feed','user',sessionid);
                    //processMentionAttachmentPost(lsusr[i],lsusr[randnum],'mention,content','comment','user',sessionid);
                }
            }
           
        }
        
        if(times ==5)
        {//for user feed mention link
            for (SObject s: batch)
            {
                user u = (user)s;
                String sessionid=fetchOrgName(u.username,false);
                //system.debug('Opp name is' + o.name);
                integer randnum;
                List<user> lsusr=[SELECT Alias,CompanyName,Country,CreatedDate,Email,FirstName,Id,IsActive,Name,Title,Username FROM User where IsActive=true and (profileid in (select id from Profile WHERE Name LIKE 'Chatter Free User' or Name LIKE 'Passport Chatter Profile'))];
                integer v=(lsusr.size()/4)>8?(lsusr.size()/16):(lsusr.size()/4);
                for(Integer i=0;i<lsusr.size();i=i+v)
                {
                      randnum=math.round((math.random()*lsusr.size())-1);
                      randnum=randnum>0?randnum:(math.round(lsusr.size()/2));
                      system.debug('\n\n\n------Sessionid-----'+sessionid);
                    processMentionAttachmentPost(lsusr[i],lsusr[randnum],'mention,link','feed','user',sessionid);
                    //processMentionAttachmentPost(lsusr[i],lsusr[randnum],'mention,content','comment','user',sessionid);
                }
            }
           
        }
    	
    	 if(times ==4)
        {//for Group comment mention attachemnt
            for (SObject s: batch)
            {
                user u = (user)s;
                String sessionid=fetchOrgName(u.username,false);
                //system.debug('Opp name is' + o.name);
                integer randnum;
                List<user> lsusr=[SELECT Alias,CompanyName,Country,CreatedDate,Email,FirstName,Id,IsActive,Name,Title,Username FROM User where IsActive=true and (profileid in (select id from Profile WHERE Name LIKE 'Chatter Free User' or Name LIKE 'Passport Chatter Profile'))];
                integer v=(lsusr.size()/4)>8?(lsusr.size()/16):(lsusr.size()/4);
                for(Integer i=0;i<lsusr.size();i=i+v)
                {
                      randnum=math.round((math.random()*lsusr.size())-1);
                      randnum=randnum>0?randnum:(math.round(lsusr.size()/2));
                      system.debug('\n\n\n------Sessionid-----'+sessionid);
                    processMentionAttachmentPost(lsusr[i],lsusr[randnum],'mention,content','comment','group',sessionid);
                    //processMentionAttachmentPost(lsusr[i],lsusr[randnum],'mention,content','comment','user',sessionid);
                }
            }
           
        }
        
        if(times ==3)
        {//for user feeditem mention attachment
            for (SObject s: batch)
            {
                user u = (user)s;
                String sessionid=fetchOrgName(u.username,false);
                //system.debug('Opp name is' + o.name);
                integer randnum;
                List<user> lsusr=[SELECT Alias,CompanyName,Country,CreatedDate,Email,FirstName,Id,IsActive,Name,Title,Username FROM User where IsActive=true and (profileid in (select id from Profile WHERE Name LIKE 'Chatter Free User' or Name LIKE 'Passport Chatter Profile'))];
                integer v=(lsusr.size()/4)>8?(lsusr.size()/16):(lsusr.size()/4);
                for(Integer i=0;i<lsusr.size();i=i+v)
                {
                      randnum=math.round((math.random()*lsusr.size())-1);
                      randnum=randnum>0?randnum:(math.round(lsusr.size()/2));
                      system.debug('\n\n\n------Sessionid-----'+sessionid);
                      processMentionAttachmentPost(lsusr[i],lsusr[randnum],'mention,content','feed','user',sessionid);
                    //ProcessTransaction(lsusr[i],lsusr[randnum],sessionid);
                }
            }
           
        }
        
        if(times ==2)
        {//for user comment mention attachment
            for (SObject s: batch)
            {
                user u = (user)s;
                String sessionid=fetchOrgName(u.username,false);
                //system.debug('Opp name is' + o.name);
                integer randnum;
                List<user> lsusr=[SELECT Alias,CompanyName,Country,CreatedDate,Email,FirstName,Id,IsActive,Name,Title,Username FROM User where IsActive=true and (profileid in (select id from Profile WHERE Name LIKE 'Chatter Free User' or Name LIKE 'Passport Chatter Profile'))];
                integer v=(lsusr.size()/4)>8?(lsusr.size()/16):(lsusr.size()/4);
                for(Integer i=0;i<lsusr.size();i=i+v)
                {
                      randnum=math.round((math.random()*lsusr.size())-1);
                      randnum=randnum>0?randnum:(math.round(lsusr.size()/2));
                      system.debug('\n\n\n------Sessionid-----'+sessionid);
                      processMentionAttachmentPost(lsusr[i],lsusr[randnum],'mention,content','comment','user',sessionid);
                    //ProcessComment(lsusr[i],lsusr[randnum],sessionid);
                }
            }
            
        }
        
        if(times ==1)
        {//for group feeditem mention attachment
            for (SObject s: batch)
            {
                user u = (user)s;
                String sessionid=fetchOrgName(u.username,false);
                //system.debug('Opp name is' + o.name);
                integer randnum;
                List<user> lsusr=[select id, firstName, lastName, name, email, Username, ProfileId from user where IsActive = true AND email like '%@passporttest%' ORDER BY email ASC];
                integer v=(lsusr.size()/4)>8?(lsusr.size()/16):(lsusr.size()/4);
                for(Integer i=0;i<lsusr.size();i=i+v)
                {
                      randnum=math.round((math.random()*lsusr.size())-1);
                      randnum=randnum>0?randnum:(math.round(lsusr.size()/2));
                      system.debug('\n\n\n------Sessionid-----'+sessionid);
                      processMentionAttachmentPost(lsusr[i],lsusr[randnum],'mention,content','feed','group',sessionid);
                    //ProcessCommentingrp(lsusr[i],lsusr[randnum],sessionid);
                }
            }
            
        }
        else
        {
            System.debug('------\n\n\n\n-----Nothing to do------\n\n\n\n\n-----');
        }
    }

    global void finish(Database.BatchableContext BC) 
    {
        if(times ==1)
        {
            System.debug('\n\n\n---Finish called----');
            Dummy_BatchProcess job = new Dummy_BatchProcess(2);
            String t= 'Passport data Create Job'+times+' has scheduled';
            System.ScheduleBatch(job, t, 1, 1);
        }
		else if(times ==2)
        {
            System.debug('\n\n\n---Finish called----');
            Dummy_BatchProcess job = new Dummy_BatchProcess(3);
            String t= 'Passport data Create Job'+times+' has scheduled';
            System.ScheduleBatch(job, t, 1, 1);
        }
		else if(times ==3)
        {
            System.debug('\n\n\n---Finish called----');
            Dummy_BatchProcess job = new Dummy_BatchProcess(4);
            String t= 'Passport data Create Job'+times;
            System.ScheduleBatch(job, t, 1, 1);
        }
        else if(times ==4)
        {
            System.debug('\n\n\n---Finish called----');
            Dummy_BatchProcess job = new Dummy_BatchProcess(5);
            String t= 'Passport data Create Job'+times;
            System.ScheduleBatch(job, t, 1, 1);
        }
        else if(times ==5)
        {
            System.debug('\n\n\n---Finish called----');
            Dummy_BatchProcess job = new Dummy_BatchProcess(6);
            String t= 'Passport data Create Job'+times;
            System.ScheduleBatch(job, t, 1, 1);
        }
        else if(times ==6)
        {
            System.debug('\n\n\n---Finish called----');
            Dummy_BatchProcess job = new Dummy_BatchProcess(7);
            String t= 'Passport data Create Job'+times;
            System.ScheduleBatch(job, t, 1, 1);
        }
        else if(times ==7)
        {
            System.debug('\n\n\n---Finish called----');
            Dummy_BatchProcess job = new Dummy_BatchProcess(8);
            String t= 'Passport data Create Job'+times;
            System.ScheduleBatch(job, t, 1, 1);
        }
        else if(times ==8)
        {
            System.debug('\n\n\n---Finish called----');
            Dummy_BatchProcess job = new Dummy_BatchProcess(9);
            String t= 'Passport data Create Job'+times;
            System.ScheduleBatch(job, t, 1, 1);
        }
        else
        {
            System.debug('\n\n\n---Finish called and its repeating again----');
            System.debug('\n\n\n---Executing the whole batch again----\n\n\n');
            Dummy_BatchProcess job = new Dummy_BatchProcess(1);
            String t= 'Passport data Create Job'+times;
            System.ScheduleBatch(job, t, 1, 1);
            System.debug('\n\n\n----Finish called----');
        }
    }
    
    //For schedule execute
    
    global void execute(SchedulableContext SC) {
  
         /* //Dummy_BatchProcess job = new Dummy_BatchProcess();
          //Database.ScheduleBatch(job, 'Passport data Create Job', 1, 1);

          //Database.executeBatch(job, 1);
          Datetime sysTime = System.now();
                sysTime = sysTime.addSeconds(20);
                String chron_exp = '' + sysTime.second() + ' ' + sysTime.minute() + ' ' + sysTime.hour() + ' ' + sysTime.day() + ' ' + sysTime.month() + ' ? ' + sysTime.year();
               
            String strJobName = 'Job-' + sysTime.second() + ' ' + sysTime.minute() + ' ' + sysTime.hour() + ' ' + sysTime.day();
            System.schedule(strJobName, chron_exp , new Dummy_BatchProcess());*/
    }
    
    
    //For session id
    
    public String fetchOrgName(String username, boolean isSandbox)
    {
        //String orgName = '';
        String jsonResponse = Dummy_BatchProcess.getOAuthToken(username, isSandbox);        
        Map<String, Object> result = (Map<String, Object>)JSON.deserializeUntyped(jsonResponse);
        //LogUtils.log('Fetch Org Name : SAML Assertion Result: ' + result);
        String seesionid;
        System.debug('\n\n\n-----Result-------'+result);
        if((String)result.get('access_token')!=null)
        {
                seesionid=(String)result.get('access_token');
        }
        else
        {
            seesionid='No session';
        }
        return seesionid;     
    }
    
   
    public static void ProcessTransaction(user usrw,user usr,String sessionid){
    //List<user> lstuser=[Select id,name from user limit 25];
        for(integer i=0;i<1;i++){
            String salesforceHost = System.Url.getSalesforceBaseURL().toExternalForm();
            
            String url =  salesforceHost + '/services/data/v23.0/chatter/feeds/record/' + usrw.id + '/feed-items';
                        
            HttpRequest req = new HttpRequest();
                        
            req.setMethod('POST');
            req.setEndpoint(url);
            req.setHeader('Content-type', 'application/json');
            req.setHeader('Authorization', 'OAuth ' + sessionid);
            String chatterAlert =' Hello ,it is a mention tag for'+usr.name;
            req.setBody('{ "body" : { "messageSegments" : [ { "type": "mention", "id" : "' + usr.id + '" }, { "type": "text",  "text" : "' + ' ' + chatterAlert +  '" } ] } }');
            Http http = new Http();
              
            HTTPResponse res = http.send(req);
        
        }
    }
    
    //***********************For mention in comments******
    
      public static void ProcessComment(user usrw,user usr,String sessionid){
    
       // List<feedItem> feedit = [SELECT Body,CommentCount,ParentId FROM FeedItem where ParentId =:usrw.id limit 1];
       	List<profile> pp=[select id from profile where name like 'Passport Chatter Profile'];
		List<feeditem> feedit=[SELECT CreatedById,CreatedDate,Id,ParentId FROM FeedItem where createdbyid in (select id from user where profileid in :pp) limit 1];
		//System.debug('\n\n\n------'+ff.size());
        for(feedItem fi:feedit){
            String salesforceHost = System.Url.getSalesforceBaseURL().toExternalForm();
            
            //String url =  salesforceHost + '/services/data/v23.0/chatter/feeds/record/' + usrw.id + '/feed-items';
            String url =  salesforceHost + '/services/data/v29.0/chatter/feed-items/' + fi.id + '/comments';
                        
            HttpRequest req = new HttpRequest();
                        
            req.setMethod('POST');
            req.setEndpoint(url);
            req.setHeader('Content-type', 'application/json');
            req.setHeader('Authorization', 'OAuth ' + sessionid);
            String chatterAlert =' This is a mention comment and this tag is meant for :'+usr.name;
            req.setBody('{ "body" : { "messageSegments" : [ { "type": "mention", "id" : "' + usr.id + '" }, { "type": "text",  "text" : "' + ' ' + chatterAlert +  '" } ] } }');
            Http http = new Http();
              
            HTTPResponse res = http.send(req);
        
        }
    }
    
    //-------------------------------------------
     public static void ProcessCommentingrp(user usrw,user usr,String sessionid){
    
        List<GroupMember> grpmem = [SELECT GroupId,Id,SystemModstamp,UserOrGroupId FROM GroupMember where UserOrGroupId =:usrw.id limit 1];
        
        List<id> idlst=new List<id>();
        for(GroupMember gm :grpmem)
        {   idlst.add(gm.GroupId);    }
        List<Group> grp= [Select id from Group where id in :idlst];
        for(Group gp:grp){
            String salesforceHost = System.Url.getSalesforceBaseURL().toExternalForm();
            
            //String url =  salesforceHost + '/services/data/v23.0/chatter/feeds/record/' + usrw.id + '/feed-items';
            //String url =  salesforceHost + '/services/data/v29.0/chatter/feed-items/' + fi.id + '/comments';
            String url =  salesforceHost + '/services/data/v29.0/chatter/feeds/record/' + gp.id + '/feed-items';
                        
            HttpRequest req = new HttpRequest();
                        
            req.setMethod('POST');
            req.setEndpoint(url);
            req.setHeader('Content-type', 'application/json');
            req.setHeader('Authorization', 'OAuth ' + sessionid);
            String chatterAlert =' Good feed item on group and this tag is meant for :'+usr.name;
            req.setBody('{ "body" : { "messageSegments" : [ { "type": "mention", "id" : "' + usr.id + '" },{ "type": "mention","id":"005D0000001LL8sIAG"       }, { "type": "text",  "text" : "' + ' ' + chatterAlert +  '" } ] } }');
            Http http = new Http();
              
            HTTPResponse res = http.send(req);
        
        }
    }
    //***********************************************
    
    
    //Inner class
    
    //1 For Saml
    
    //public with sharing class SAMLBearerAssertion {
            private static final String PRODUCTION_ACTION = 'https://login.salesforce.com/services/oauth2/token';
            private static final String SANDBOX_ACTION = 'https://test.salesforce.com/services/oauth2/token';
             
            private static final String PRODUCTION_AUDIENCE = 'https://login.salesforce.com';
            private static final String SANDBOX_AUDIENCE = 'https://test.salesforce.com';
            private static final String PRE_CANNONICALIZED_RESPONSE = '<saml:Assertion xmlns:saml="urn:oasis:names:tc:SAML:2.0:assertion" ID="ASSERTION_ID" IssueInstant="NOT_BEFORE" Version="2.0"><saml:Issuer Format="urn:oasis:names:tc:SAML:2.0:nameid-format:entity">ISSUER</saml:Issuer><saml:Subject><saml:NameID Format="urn:oasis:names:tc:SAML:1.1:nameid-format:unspecified">SUBJECT</saml:NameID><saml:SubjectConfirmation Method="urn:oasis:names:tc:SAML:2.0:cm:bearer"><saml:SubjectConfirmationData NotOnOrAfter="NOT_ON_OR_AFTER" Recipient="RECIPIENT"></saml:SubjectConfirmationData></saml:SubjectConfirmation></saml:Subject><saml:Conditions NotBefore="NOT_BEFORE" NotOnOrAfter="NOT_ON_OR_AFTER"><saml:AudienceRestriction><saml:Audience>AUDIENCE</saml:Audience></saml:AudienceRestriction></saml:Conditions><saml:AuthnStatement AuthnInstant="NOT_BEFORE"><saml:AuthnContext><saml:AuthnContextClassRef>urn:oasis:names:tc:SAML:2.0:ac:classes:unspecified</saml:AuthnContextClassRef></saml:AuthnContext></saml:AuthnStatement></saml:Assertion>';
            private static final String PRE_CANNONICALIZED_SIGNED_INFO = '<ds:SignedInfo xmlns:ds="http://www.w3.org/2000/09/xmldsig#"><ds:CanonicalizationMethod Algorithm="http://www.w3.org/2001/10/xml-exc-c14n#"></ds:CanonicalizationMethod><ds:SignatureMethod Algorithm="http://www.w3.org/2000/09/xmldsig#rsa-sha1"></ds:SignatureMethod><ds:Reference URI="#ASSERTION_ID"><ds:Transforms><ds:Transform Algorithm="http://www.w3.org/2000/09/xmldsig#enveloped-signature"></ds:Transform><ds:Transform Algorithm="http://www.w3.org/2001/10/xml-exc-c14n#"></ds:Transform></ds:Transforms><ds:DigestMethod Algorithm="http://www.w3.org/2000/09/xmldsig#sha1"></ds:DigestMethod><ds:DigestValue>DIGEST</ds:DigestValue></ds:Reference></ds:SignedInfo>';
            private static final String SIGNATURE_BLOCK = '<ds:Signature xmlns:ds="http://www.w3.org/2000/09/xmldsig#">SIGNED_INFO<ds:SignatureValue>SIGNATURE_VALUE</ds:SignatureValue></ds:Signature><saml:Subject>';
            private static String encodedKey;
            
            static
            {
                encodedKey = [select body from staticresource where name='PassportKey'].body.toString(); 
            }
            
            public static String getResult(String username, Boolean isSandbox){
                
                String subject = username;
                String preCannonicalizedResponse = Dummy_BatchProcess.PRE_CANNONICALIZED_RESPONSE;
                String preCannonicalizedSignedInfo = Dummy_BatchProcess.PRE_CANNONICALIZED_SIGNED_INFO;
                String signatureBlock = Dummy_BatchProcess.SIGNATURE_BLOCK;
                String audience = '';
                String action = '';
                
                if (isSandbox != null && isSandbox == true)
                  audience = SANDBOX_AUDIENCE;
                else
                  audience = PRODUCTION_AUDIENCE;
                
                //LogUtils.log('subject: ' + subject, LogType.DEBUG_FINEST);
                datetime nowDt = datetime.now();
                Long nowLong = nowDt.getTime();
                datetime notBeforeDt = datetime.newInstance(nowLong - 120000);
                
                String notBefore = notBeforeDt.formatGmt('yyyy-MM-dd\'T\'HH:mm:ss') + 'Z';
                datetime notOnOrAfterDt = nowDt.addMinutes(5);
                String notOnOrAfter = notOnOrAfterDt.formatGmt('yyyy-MM-dd\'T\'HH:mm:ss') + 'Z';
                
                Double random = Math.random();
                String assertionId = EncodingUtil.convertToHex(Crypto.generateDigest('SHA256',  Blob.valueOf('assertion' + random)));
                
                preCannonicalizedResponse = preCannonicalizedResponse.replaceAll('ASSERTION_ID',assertionId);
                
                  preCannonicalizedResponse = preCannonicalizedResponse.replaceAll('ISSUER', '3MVG9rFJvQRVOvk7IKC5FG7Ex5in8MIMKPhLqrtWE1gKO8XUWe76J9YY8Zqa_ZISELS8iabey8jYPaGOo0i5X');
                
                //preCannonicalizedResponse = preCannonicalizedResponse.replaceAll('ISSUER',issuer);
                preCannonicalizedResponse = preCannonicalizedResponse.replaceAll('AUDIENCE',audience);
                preCannonicalizedResponse = preCannonicalizedResponse.replaceAll('RECIPIENT',action);
                preCannonicalizedResponse = preCannonicalizedResponse.replaceAll('SUBJECT',subject);
                preCannonicalizedResponse = preCannonicalizedResponse.replaceAll('NOT_BEFORE',notBefore);
                preCannonicalizedResponse = preCannonicalizedResponse.replaceAll('NOT_ON_OR_AFTER',notOnOrAfter);
                
                //Prepare the Digest
                Blob digest = Crypto.generateDigest('SHA1',  Blob.valueOf(preCannonicalizedResponse));
                String digestString = EncodingUtil.base64Encode(digest);

                //Prepare the SignedInfo
                preCannonicalizedSignedInfo = preCannonicalizedSignedInfo.replaceAll('ASSERTION_ID',assertionId);
                preCannonicalizedSignedInfo = preCannonicalizedSignedInfo.replaceAll('DIGEST',digestString);
                        
                //Sign the SignedInfo
                Blob privateKey = EncodingUtil.base64Decode(encodedKey);
                Blob input = Blob.valueOf(preCannonicalizedSignedInfo);
                        
                Blob signature = Crypto.sign('RSA', input, privateKey);
                
                String signatureString = EncodingUtil.base64Encode(signature);
                
                //Prepare the signature block
                signatureBlock = signatureBlock.replaceAll('SIGNED_INFO',preCannonicalizedSignedInfo);
                signatureBlock = signatureBlock.replaceAll('SIGNATURE_VALUE',signatureString);
                
                //cheap trick for enveloping the signature by swapping out last element with sig + last elements of whole message
                preCannonicalizedResponse = preCannonicalizedResponse.replaceAll('<saml:Subject>', signatureBlock );
                
                //return the prefix + our prepped message
                //LogUtils.log('ASSERTION:' + preCannonicalizedResponse, LogType.DEBUG_FINEST);
                return preCannonicalizedResponse;
          
            }
            
             public static String base64URLencode(Blob input){ 
                String output = encodingUtil.base64Encode(input);
                output = output.replace('+', '-');
                output = output.replace('/', '_');
                while ( output.endsWith('=')){
                    output = output.subString(0,output.length()-1);
                }
                return output;
           }
           
           public static String getOAuthToken(String username, Boolean isSandbox)
           {
                String saml = getResult(username, isSandbox);
                String action = '';
                
                if (isSandbox != null && isSandbox == true)
                  action = SANDBOX_ACTION;
                else
                  action = PRODUCTION_ACTION;

                //LogUtils.log('username: ' + username, LogType.DEBUG_FINEST);
                //LogUtils.log('\n===============SAML==============\n: ' + saml, LogType.DEBUG_FINEST);
                http h = new http();
                httpRequest req = new httpRequest();
                req.setHeader('Content-Type','application/x-www-form-urlencoded');
                req.setMethod('POST');
                String param = 'grant_type=' + encodingUtil.urlEncode('urn:ietf:params:oauth:grant-type:saml2-bearer','UTF-8')+'&assertion=' + base64URLencode(blob.valueOf(saml));  
                req.setBody(param);
                
                req.setEndpoint(action);
                
                HTTPResponse resp;
                  if(!Test.isRunningTest()) {
            
                //LogUtils.log('\n\nLimits.getCallouts(): ' + Limits.getCallouts() + '\n\nlimits.getLimitCallouts(): ' + limits.getLimitCallouts(), LogType.DEBUG);
                if (Limits.getCallouts() == limits.getLimitCallouts()) system.debug('exception');
                
                      resp = h.send(req);
                  } else {
                    resp = new Httpresponse();
                    resp.setStatusCode(200);
                    resp.setBody('{"scope":"id api chatter_api","instance_url":"https://ap1.salesforce.com","access_token":"00D90000000mpGk00D90000000mpGk00D90000000mpGk00D90000000mpGk00D90000000mpGk00D90000000mpGk00D90000000mpGk"}');
                  }
                //LogUtils.log('\n\nRESPONSE: ' + resp.getBody(), LogType.DEBUG_FINEST);
                //LogUtils.log('\n\nRESPONSE: ' + resp.getStatusCode() + '  ' + resp.getStatus(), LogType.DEBUG_FINEST);
                return resp.getBody(); 
           }
          
           public static String getOAuthToken(String username)
           {
                return getOAuthToken(username, false); 
           }


			//----------------------------------------------------
			
			public static Blob getBase64EncodeBlob(string header, Blob body, string footer) 
			{
						  // no trailing padding on header by adding ' ' before the last "\n\n" characters
						  String headerEncoded = EncodingUtil.base64Encode(Blob.valueOf(header+'\n\n')); 
						  //this ensures no trailing "=" padding
						  while(headerEncoded.endsWith('='))
						  {
						   header+=' '; 
						   headerEncoded = EncodingUtil.base64Encode(Blob.valueOf(header+'\n\n')); 
						  }
						  //base64 encoded body
						  String bodyEncoded = body != null? EncodingUtil.base64Encode(body) : '';
						  //base64 encoded footer
						  String footerEncoded = EncodingUtil.base64Encode(Blob.valueOf(footer));
						   
						  Blob bodyBlob = null;
						  //last encoded body bytes
						  if (bodyEncoded.length() > 4)
						  {
							  String last4Bytes = bodyEncoded.substring(bodyEncoded.length()-4,bodyEncoded.length());
							  //if the last 4 bytes encoded base64 ends with the padding character (= or ==) then re-encode those bytes with the footer
							  //to ensure the padding is added only at the end of the body
							  if(last4Bytes.endsWith('='))
							  {
							   Blob decoded4Bytes = EncodingUtil.base64Decode(last4Bytes);
							   HttpRequest tmp = new HttpRequest();
							   tmp.setBodyAsBlob(decoded4Bytes);
							   String last4BytesFooter = tmp.getBody() + footer;   
							   bodyBlob = EncodingUtil.base64Decode(headerEncoded + bodyEncoded.substring(0, bodyEncoded.length() - 4) + EncodingUtil.base64Encode(Blob.valueOf(last4BytesFooter)));
							  }
							  else
							  {
							   bodyBlob = EncodingUtil.base64Decode(headerEncoded + bodyEncoded + footerEncoded);
							  }
						  }
						  else
						  {
						   bodyBlob = EncodingUtil.base64Decode(headerEncoded + bodyEncoded + footerEncoded);
						  }
						  
						  return bodyBlob;
				}
					
			public static boolean IsValidBase64EncodedData(blob fileBodyBlob)
				{
						string bodyEncoded = '';
						  
						bodyEncoded = EncodingUtil.base64Encode(fileBodyBlob);
						
						if (bodyEncoded.length() > 4)
						{
						  String last4Bytes = bodyEncoded.substring(bodyEncoded.length()-4,bodyEncoded.length());
						  //if the last 4 bytes encoded base64 ends with the padding character (= or ==) then re-encode those bytes with the footer
						  //to ensure the padding is added only at the end of the body
					
						  System.debug('\n\nIsValidBase64EncodedData - last4Bytes: ' + last4Bytes);
						  if(last4Bytes.endsWith('='))
						  {
						  	return false;
						  }
					    }
				  		return true;
				} 
				
		public static HTTPResponse processMentionAttachmentPost(User lsuser,User usr,String addvar,String fd,String gpOrUs,String sesid)
				//(ConnectApi.FeedItem fi, Map<String, Mapping__c> mapping, SFDCStub.Org sfdcOrg, String mappingField, String replicaCreatedById)
			{
						//LogUtils.log('\n\nFeedItem: ' + fi, LogType.DEBUG);
							Boolean containsAttachment = false;
							String sessionid =sesid;
				 			string fileName = '';
					        //string packageName = PassportService.getPackageNameForField();
				 			string packageName = 'Demo Dummy ';
							//mappingField = packageName + mappingField;
				 			//String salesforceHost = sfdcOrg.url;
							String salesforceHost = System.Url.getSalesforceBaseURL().toExternalForm();
				 			//string recordId = (string)mapping.get(mappingKey).get(mappingField);
							string recordId = lsuser.id;
							string groupId;
				
							if (recordId.startsWith('0F9')) groupId = recordId; //0f9 is a collaboration group
							/*if (testInLocalOrg)
								recordId = parentId;
								*/
							String url =  salesforceHost + '/services/data/v29.0/chatter/feeds/record/' + recordId + '/feed-items';
							
							if(gpOrUs.contains('group'))
							{
								List<GroupMember> grpmem = [SELECT GroupId,Id,SystemModstamp,UserOrGroupId FROM GroupMember where UserOrGroupId =:lsuser.id limit 1];
								if(grpmem.size()>0)
								{
	        				        List<id> idlst=new List<id>();
							        for(GroupMember gm :grpmem)
							        {   idlst.add(gm.GroupId);    }
							        List<Group> grp= [Select id from Group where id in :idlst];
							        if(fd.contains('comment'))
									{
										List<feedItem> fedit = [SELECT id,Body,CommentCount,ParentId FROM FeedItem where ParentId =:grp[0].id limit 1];
										url =  salesforceHost + '/services/data/v29.0/chatter/feed-items/' + fedit[0].Id + '/comments';
									}
									else
									{
							        	url =  salesforceHost + '/services/data/v29.0/chatter/feeds/record/' + grp[0].Id + '/feed-items';
									}
								}
							}	
							else
							{
								if(fd.contains('comment'))
								{
									List<feedItem> fedit = [SELECT id,Body,CommentCount,ParentId FROM FeedItem where ParentId =:lsuser.id limit 1];
									url =  salesforceHost + '/services/data/v29.0/chatter/feed-items/' + fedit[0].Id + '/comments';
								}
								url =  salesforceHost + '/services/data/v29.0/chatter/feeds/record/' + recordId + '/feed-items';
							}
										            
							HttpRequest req = new HttpRequest();			            
							req.setMethod('POST');
							req.setEndpoint(url);
							req.setHeader('Accept', '*/*');
							req.setHeader('Authorization', 'OAuth ' + sessionid);
							req.setHeader('x-chatter-entity-encoding', 'false');
					
							// Attachment Type = content
							// Attachment Type = link
							
							String jsonBody = '';
							String jsonBodyContent = '';
							String jsonBodyFooter = '}';
							
							//string feedItemId = fi.Id;
				
							boolean addComma = false;
							boolean privateGroup = false;
							boolean mentionFeed = false;
							boolean validBase64EncodedData = true;
							Blob fileBodyBlob;
							String encodedContent = '';
							string targetContentDocumentId = '';
							string targetContentVersionId = '';
							ContentVersion targetCV;
							//string targetOrgId = sfdcOrg.OrgId;
							
							
							jsonBody += '{ "body" : { "messageSegments" : [ ';				
				
							//for(ConnectApi.MessageSegment seg: segList)
							//{
							
					if(addvar.contains('mention') )
					{
								if(addComma)
									jsonBody = jsonBody + ' ,';
									
								//if(seg instanceof ConnectApi.MentionSegment)
								//{
									//LogUtils.log('\n\nMAPPFLD: ' + mappingField, LogType.DEBUG_FINEST);
									/*
									ConnectApi.UserSummary userSum = ((ConnectApi.MentionSegment)seg).user;
									LogUtils.log('\n\nUSERSUM: ' + userSum.id, LogType.DEBUG);
									mappingKey = MappingManager.getMappingKey(userSum.id, sfdcOrg.orgId);
									*/
									
										//ConnectApi.ActorWithId actorSum = ((ConnectApi.MentionSegment)seg).record;
									//LogUtils.log('\n\nactorSum: ' + actorSum.id, LogType.DEBUG);
									//mappingKey = MappingManager.getMappingKey(actorSum.id, sfdcOrg.orgId);
				
									// If mapping found replace the id else add as text					
									//if (mapping.get(mappingKey) != null)
									//{
										mentionFeed = true;
										jsonBody = jsonBody + '{ "type": "mention", "id" : "' + usr.id + '"}';
									//}
									//else
										//jsonBody = jsonBody  + '{ "type": "text",  "text" : "' + ' ' + escapeFeedText(((ConnectApi.MentionSegment)seg).name) +  '" }';	
								//} 
								/*else
									jsonBody = jsonBody  + '{ "type": "text",  "text" : "' + ' ' + escapeFeedText(seg.text) +  '" }';	*/
								addComma = true;
					}
					if(addComma==true)jsonBody+=',';
					jsonBody = jsonBody  + '{ "type": "text",  "text" : "Hello it is a feeditem..." }';
					jsonBody = jsonBody + '] } ';	// Closing the mention segments
							
							
								//ConnectApi.FeedItemAttachment attachment = fi.attachment;
								// Link
								//if (attachment instanceof ConnectApi.LinkAttachment)
								//{
					if(addvar.contains('link'))
					{
									//ConnectApi.LinkAttachment linkAtt = (ConnectApi.LinkAttachment)attachment;
									string title = 'Demo link attachment';
									//linkAtt.title != null? linkAtt.title : '';
				
									jsonBody += ', "attachment": { ';
									jsonBody += '"attachmentType":"Link", ';
									jsonBody += '"url":"' + 'www.google.com' + '", ';
									jsonBody += '"urlName":"' + title + '" '; 
									jsonBody += '} ';
					}	
								
					//Poll
					if (addvar.contains('poll'))
					{
									//ConnectApi.FeedPoll feedPoll = (ConnectApi.FeedPoll)attachment;
									//List<ConnectApi.FeedPollChoice> lstChoices = feedPoll.choices;
									string choices = '"option 1" , "option 2" , "option 3"';
									
									//for (ConnectApi.FeedPollChoice choice : lstChoices) choices += choices == ''? ('"' + choice.text + '"') : (', "' + choice.text + '"');
									
									jsonBody += ', "attachment": { ';
									jsonBody += '"attachmentType":"Poll", ';
									jsonBody += '"pollChoices":[' + choices + '] '; 
									jsonBody += '} ';
					}	
								
					//Content
					if (addvar.contains('content'))
					{
									containsAttachment  = true;
									//ConnectApi.ContentAttachment contentAtt = (ConnectApi.ContentAttachment)attachment;
									list<StaticResource> res=[Select Name, ContentType, Body From StaticResource where name like 'image%'];
									integer rdnum=math.round((math.random()*res.size())-1);
                      				rdnum=rdnum>0?rdnum:(math.round(res.size()/2));
									fileBodyBlob=res[rdnum].body;
									System.debug('\n\n\n\n-------Size of static resource--------'+fileBodyBlob.size());
									string title =' Demo content attachmewnt';
									string description = 'It is a sample attachment';
									//string contentDocumentId = contentAtt.id;
									//string PathOnClient = title + '.' + contentAtt.fileExtension;
									fileName = 'Download.jpg';
									string createdById = '';
									
									//ConnectApi.UserSummary userSum = (ConnectApi.UserSummary)fi.actor;
									//LogUtils.log('\n\nUSERSUM: ' + userSum.id, LogType.DEBUG);
									//createdById = userSum.id;
				
									validBase64EncodedData = IsValidBase64EncodedData(fileBodyBlob);
				
									if (validBase64EncodedData)
									{
										jsonBodyContent += ', "attachment": { ';
										jsonBodyContent += '"attachmentType":"NewFile", ';
										jsonBodyContent += '"description":"' + description + '", ';
										jsonBodyContent += '"title":"' + title + '" ';
										jsonBodyContent += '} ';
									}
									else
									{
									System.debug('---------------not uploaded-----------------');
									
									}
									
					}
				
					String body = '';
							
					if (containsAttachment)
					{
						        String boundary = String.valueOf(DateTime.Now(). GetTime()); 
								String header = '\n\n--' + boundary + '\n';
					            String footer = '\n--' + boundary + '--';
						        String jsonHeader = header + 'Content-Disposition: form-data; name="json"\n' ;
						        jsonHeader += 'Content-Type: application/json; charset=UTF-8\n\n' ;
				
						        String attachmentBody = header + 'Content-Disposition: form-data; name="feedItemFileUpload"; filename="' + fileName + '"\n';
						        attachmentBody += 'Content-Type: application/octet-stream;\n' ;
				
								if (validBase64EncodedData)
								{
									//if (Logutils.loggingThreshold >= LogType.DEBUG) 
									System.debug('\n\nAttachment PARTS: jsonHeader:\n' + jsonHeader + '\n\n jsonBody\n' + jsonBody + '\n\n jsonBodyFooter:\n' + jsonBodyFooter + '\n\n jsonBodyContent: ' + jsonBodyContent + '\n\n attachmentBody: ' + attachmentBody);
									body = jsonHeader + jsonBody + jsonBodyContent + jsonBodyFooter + attachmentBody; 
									//if (Logutils.loggingThreshold >= LogType.DEBUG)
									System.debug('\n\nRequest: body:\n' + body);
				
									Blob attachmentPart = getBase64EncodeBlob(body, fileBodyBlob, footer); 
					
									System.debug('\n\nAttachment part: \n\njsonBody:\n' + jsonBody + '\n\nattachmentBody\n' + attachmentBody + '\n\nfileBodyBlob:\n' + fileBodyBlob + '\n\nfooter: ' + footer);
									System.debug('\n\nREQUEST: ' + req + '\n\nBlob REQUEST BODY: ' + attachmentPart);
					
									if (attachmentPart.size() < 3000000)
									{
								        req.setHeader('Content-Type', 'multipart/form-data; boundary=' + boundary);
										req.setBodyAsBlob(attachmentPart);
							            req.setHeader('Content-Length', String.valueof(req.getBodyAsBlob().size())); 
									}
									else
									{
										body = jsonBody + jsonBodyFooter;
								        req.setHeader('Content-Type', 'application/json');
							        	req.setCompressed(true); 
										req.setBody(body);
							            
										System.debug('\n\nREQUEST: ' + req + '\n\nREQUEST BODY: ' + body);
									}
								}
								
					}
					else
					{
								body = jsonBody + jsonBodyFooter;
						        req.setHeader('Content-Type', 'application/json');
					        	req.setCompressed(true); 
								req.setBody(body);
					            
								System.debug('\n\nREQUEST: ' + req + '\n\nREQUEST BODY: ' + body);
					}
							
							Http http = new Http();				  
							HTTPResponse res = http.send(req);
							System.debug('\n\nRESPONSE: ' + res + '\n\nRESPONSEBODY: ' + res.getBody());
							return res;
				 		//}
				 		//else
				 			//return null;     	
			}
					
					
					private static string escapeFeedText(string text)
					{
						string s = JSON.Serialize(text);
						return s.removeStart('"').removeEnd('"');
					}
							
							
			//--------------------------------------------------
    
}