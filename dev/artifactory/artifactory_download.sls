application_module_downloaded:
  artifactory.downloaded:
   - artifact:
       artifactory_url: http://10.0.0.140:8081/repository
       repository: 'maven-releases'
       artifact_id: 'my-app'
       group_id: 'com.mycompany.app'
       packaging: 'zip'
       version: '1.0.0'
   - target_file: /opt/tools/my-app.zip
