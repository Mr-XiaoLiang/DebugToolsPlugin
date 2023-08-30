// IDTP.aidl
package com.lollipop.dtpbridge;

// Declare any non-default types here with import statements
import com.lollipop.dtpbridge.IDTPResponse;

interface IDTP {
    /**
     * Demonstrates some basic types that you can use as parameters
     * and return values in AIDL.
     */

    /**
    * 向服务端发起请求
    * @params token 请求的凭证，服务端会检查并且认证token，如果不通过，那么可能会拒绝请求
    * @params target 请求的地址，表示请求的内容，它是一个地址，但是也可以是一个特殊的关键字
    * @params content 请求的内容体，作为参数携带给服务器
    * @params response 请求的数据回调，它是异步的，为了不阻塞双方，所以使用了回调
    */
    oneway void request(String token, String target, String content, in IDTPResponse response);

}