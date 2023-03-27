// MessageReceiver.aidl
package com.AI.FaceVerify;
import com.AI.FaceVerify.data.MessageModel;

interface MessageReceiver {
    void onMessageReceived(in MessageModel receivedMessage);
    void onVerifyResult(in String path,in float score);
}
