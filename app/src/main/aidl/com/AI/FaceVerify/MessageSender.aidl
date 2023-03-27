// MessageSender.aidl
package com.AI.FaceVerify;
import com.AI.FaceVerify.data.MessageModel;
import com.AI.FaceVerify.MessageReceiver;

interface MessageSender {

    void sendBitmap(in Bitmap b);

    void sendMessage(in MessageModel messageModel);

    void registerReceiveListener(MessageReceiver messageReceiver);

    void unregisterReceiveListener(MessageReceiver messageReceiver);



}
