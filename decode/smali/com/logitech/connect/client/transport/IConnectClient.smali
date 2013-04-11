.class public interface abstract Lcom/logitech/connect/client/transport/IConnectClient;
.super Ljava/lang/Object;
.source "IConnectClient.java"


# virtual methods
.method public abstract disconnect()V
.end method

.method public abstract forgetPairing()V
.end method

.method public abstract onConnectChanged(IZI)V
.end method

.method public abstract onLoginFailed(ILjava/lang/String;)V
.end method

.method public abstract onOaEventMessageReceived(Lorg/jivesoftware/smack/packet/Message;)V
.end method

.method public abstract onOaRequestReceived(Lcom/logitech/connect/client/transport/OaIQ;)V
.end method

.method public abstract onPacketSendFailed(Lorg/jivesoftware/smack/packet/Packet;)V
.end method

.method public abstract onPacketWasWritten(Lorg/jivesoftware/smack/packet/Packet;)V
.end method

.method public abstract onPresenceReceived()V
.end method

.method public abstract onXmppConnectionClosedOnError()V
.end method

.method public abstract reset()V
.end method
