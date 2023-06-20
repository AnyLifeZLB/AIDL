// MessageSender.aidl
package com.AI.FaceVerify;
import com.AI.FaceVerify.data.TestMsgModel;
import com.AI.FaceVerify.MessageReceiver;

interface MessageSender {

    //发送 Bitmap 和ArrayList<String> Distribution task
    void distributeTask(in Bitmap bitmap,in List<String> baseFiles);

    void sendMessage(in TestMsgModel messageModel);

    void registerReceiveListener(MessageReceiver messageReceiver);

    void unregisterReceiveListener(MessageReceiver messageReceiver);

}
