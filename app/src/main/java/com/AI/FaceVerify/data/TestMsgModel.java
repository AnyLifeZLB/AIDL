package com.AI.FaceVerify.data;

import android.os.Parcel;
import android.os.Parcelable;

/**
 *
 */
public class TestMsgModel implements Parcelable {

    private String from;
    private String to;
    private String content;

    public String getFrom() {
        return from;
    }

    public void setFrom(String from) {
        this.from = from;
    }

    public String getTo() {
        return to;
    }

    public void setTo(String to) {
        this.to = to;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return "MessageModel{" +
                "from='" + from + '\'' +
                ", to='" + to + '\'' +
                ", content='" + content + '\'' +
                '}';
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.from);
        dest.writeString(this.to);
        dest.writeString(this.content);
    }

    public TestMsgModel() {
    }

    protected TestMsgModel(Parcel in) {
        this.from = in.readString();
        this.to = in.readString();
        this.content = in.readString();
    }

    public static final Parcelable.Creator<TestMsgModel> CREATOR = new Parcelable.Creator<TestMsgModel>() {
        @Override
        public TestMsgModel createFromParcel(Parcel source) {
            return new TestMsgModel(source);
        }

        @Override
        public TestMsgModel[] newArray(int size) {
            return new TestMsgModel[size];
        }
    };
}
