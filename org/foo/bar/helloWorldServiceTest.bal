package org.foo.bar;

import ballerina.lang.messages as message;
import ballerina.test;
import ballerina.net.http;

function testHelloService () {
    message request = {};
    message response = {};
    string responseString;

    string serviceURL = test:startService("helloService");

    http:ClientConnector endpoint = create http:ClientConnector(serviceURL);
    response = http:ClientConnector.get(endpoint, "/hello", request);
    responseString = message:getStringPayload(response);
    test:assertEquals(responseString, "Hello world!");
}