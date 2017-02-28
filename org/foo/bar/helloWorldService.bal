package org.foo.bar;

import ballerina.lang.messages as message;

@http:BasePath ("/hello")
service helloService {

    @http:GET
    resource helloResource(message m) {
        message resp = {};
        message:setStringPayload(resp, "Hello world!");
        reply resp;
    }
}
