.class public Lorg/jivesoftware/smack/BOSHPacketReader;
.super Ljava/lang/Object;
.source "BOSHPacketReader.java"

# interfaces
.implements Lcom/kenai/jbosh/BOSHClientResponseListener;


# instance fields
.field private connection:Lorg/jivesoftware/smack/BOSHConnection;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/BOSHConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    .line 56
    return-void
.end method

.method private parseFeatures(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 138
    const/4 v0, 0x0

    .line 139
    :cond_0
    :goto_0
    if-nez v0, :cond_5

    .line 140
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 142
    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 143
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mechanisms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/BOSHConnection;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v1

    invoke-static {p1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseMechanisms(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/SASLAuthentication;->setAvailableSASLMethods(Ljava/util/Collection;)V

    goto :goto_0

    .line 151
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bind"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/BOSHConnection;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/SASLAuthentication;->bindingRequired()V

    goto :goto_0

    .line 155
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "session"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 157
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/BOSHConnection;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/SASLAuthentication;->sessionsSupported()V

    goto :goto_0

    .line 158
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "register"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/BOSHConnection;->getAccountManager()Lorg/jivesoftware/smack/AccountManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smack/AccountManager;->setSupportsAccountCreation(Z)V

    goto :goto_0

    .line 162
    :cond_4
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 163
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "features"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v3

    .line 164
    goto :goto_0

    .line 168
    :cond_5
    return-void
.end method


# virtual methods
.method public responseReceived(Lcom/kenai/jbosh/BOSHMessageEvent;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 64
    invoke-virtual {p1}, Lcom/kenai/jbosh/BOSHMessageEvent;->getBody()Lcom/kenai/jbosh/AbstractBody;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_4

    .line 67
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    iget-object v1, v1, Lorg/jivesoftware/smack/BOSHConnection;->sessionID:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 68
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    const-string v2, "http://jabber.org/protocol/httpbind"

    const-string v3, "sid"

    invoke-static {v2, v3}, Lcom/kenai/jbosh/BodyQName;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/jivesoftware/smack/BOSHConnection;->sessionID:Ljava/lang/String;

    .line 70
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    iget-object v1, v1, Lorg/jivesoftware/smack/BOSHConnection;->authID:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 71
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    const-string v2, "http://jabber.org/protocol/httpbind"

    const-string v3, "authid"

    invoke-static {v2, v3}, Lcom/kenai/jbosh/BodyQName;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/jivesoftware/smack/BOSHConnection;->authID:Ljava/lang/String;

    .line 73
    :cond_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 74
    const-string v2, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 76
    new-instance v2, Ljava/io/StringReader;

    invoke-virtual {v0}, Lcom/kenai/jbosh/AbstractBody;->toXML()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 77
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 79
    :cond_2
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 80
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 81
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "body"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 121
    :cond_3
    :goto_0
    if-ne v0, v7, :cond_2

    .line 129
    :cond_4
    :goto_1
    return-void

    .line 83
    :cond_5
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "message"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 84
    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-static {v1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseMessage(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/BOSHConnection;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/BOSHConnection;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 125
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/BOSHConnection;->notifyConnectionError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 85
    :cond_6
    :try_start_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "iq"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 86
    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    iget-object v3, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-static {v1, v3}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseIQ(Lorg/xmlpull/v1/XmlPullParser;Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/BOSHConnection;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0

    .line 87
    :cond_7
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "presence"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 88
    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-static {v1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parsePresence(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Presence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/BOSHConnection;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0

    .line 89
    :cond_8
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "challenge"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 92
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    .line 93
    iget-object v3, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/BOSHConnection;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/jivesoftware/smack/SASLAuthentication;->challengeReceived(Ljava/lang/String;)V

    .line 95
    iget-object v3, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    new-instance v4, Lorg/jivesoftware/smack/sasl/SASLMechanism$Challenge;

    invoke-direct {v4, v2}, Lorg/jivesoftware/smack/sasl/SASLMechanism$Challenge;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/BOSHConnection;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0

    .line 97
    :cond_9
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "success"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 98
    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-static {}, Lcom/kenai/jbosh/ComposableBody;->builder()Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v3

    const-string v4, "xmpp"

    const-string v5, "urn:xmpp:xbosh"

    invoke-virtual {v3, v4, v5}, Lcom/kenai/jbosh/ComposableBody$Builder;->setNamespaceDefinition(Ljava/lang/String;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v3

    const-string v4, "urn:xmpp:xbosh"

    const-string v5, "restart"

    const-string v6, "xmpp"

    invoke-static {v4, v5, v6}, Lcom/kenai/jbosh/BodyQName;->createWithPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v3, v4, v5}, Lcom/kenai/jbosh/ComposableBody$Builder;->setAttribute(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v3

    const-string v4, "http://jabber.org/protocol/httpbind"

    const-string v5, "to"

    invoke-static {v4, v5}, Lcom/kenai/jbosh/BodyQName;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v4

    iget-object v5, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-virtual {v5}, Lorg/jivesoftware/smack/BOSHConnection;->getServiceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/kenai/jbosh/ComposableBody$Builder;->setAttribute(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kenai/jbosh/ComposableBody$Builder;->build()Lcom/kenai/jbosh/ComposableBody;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/BOSHConnection;->send(Lcom/kenai/jbosh/ComposableBody;)V

    .line 107
    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/BOSHConnection;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smack/SASLAuthentication;->authenticated()V

    .line 108
    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    new-instance v3, Lorg/jivesoftware/smack/sasl/SASLMechanism$Success;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/sasl/SASLMechanism$Success;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/BOSHConnection;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto/16 :goto_0

    .line 109
    :cond_a
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "features"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 110
    invoke-direct {p0, v1}, Lorg/jivesoftware/smack/BOSHPacketReader;->parseFeatures(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 111
    :cond_b
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "failure"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 112
    const-string v2, "urn:ietf:params:xml:ns:xmpp-sasl"

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 113
    invoke-static {v1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseSASLFailure(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/sasl/SASLMechanism$Failure;

    move-result-object v2

    .line 114
    iget-object v3, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/BOSHConnection;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smack/SASLAuthentication;->authenticationFailed()V

    .line 115
    iget-object v3, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-virtual {v3, v2}, Lorg/jivesoftware/smack/BOSHConnection;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto/16 :goto_0

    .line 117
    :cond_c
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "error"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 118
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    invoke-static {v1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseStreamError(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/StreamError;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/StreamError;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method
