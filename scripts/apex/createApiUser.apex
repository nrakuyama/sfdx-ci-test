Id profileId = [ SELECT Id FROM Profile WHERE Name = 'Salesforce API Only System Integrations' LIMIT 1 ].Id;
Id orgId = [ SELECT Id FROM Organization LIMIT 1 ].Id;
String domain = DomainCreator.getOrgMyDomainHostname();

User u = new user();
u.LastName = 'Github Integration';
u.Email = 'github@' + domain;
u.Username = 'github@' + domain;
u.Alias = 'github';
u.CommunityNickname = 'github';
u.ProfileID = profileId;
u.EmailEncodingKey = 'UTF-8';
u.LocaleSidKey = 'ja_JP';
u.LanguageLocaleKey = 'ja';
u.TimeZoneSidKey = 'Asia/Tokyo';
insert u;
