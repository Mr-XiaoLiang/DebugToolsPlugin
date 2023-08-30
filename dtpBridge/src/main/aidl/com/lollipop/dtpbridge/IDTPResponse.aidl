// IDTPResponse.aidl
package com.lollipop.dtpbridge;

// Declare any non-default types here with import statements

interface IDTPResponse {

    /**
    * 请求的返回回调
    * @params code 返回值的状态码，他表示本次请求的结果
    * @params content 返回值的内容，他表示本次请求的返回内容体
    */
    oneway void response(int code, String content);

}