// MessageReceiver.aidl
package com.AI.FaceVerify;
import com.AI.FaceVerify.data.TestMsgModel;

interface MessageReceiver {

    // 换回的最佳匹配和分数
    void onVerifyResult(in String path,in float score);


    void onMessageReceived(in TestMsgModel receivedMessage);

}
