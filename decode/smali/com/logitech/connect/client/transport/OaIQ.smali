.class public Lcom/logitech/connect/client/transport/OaIQ;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "OaIQ.java"

# interfaces
.implements Lcom/logitech/connect/client/transport/IOpenApiRequest;


# instance fields
.field private mBody:Ljava/lang/String;

.field private mConnectionId:I

.field private mErrorCode:Ljava/lang/String;

.field private mErrorString:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;

.field private mPairs:Lcom/logitech/connect/client/transport/NameValuePairs;


# direct methods
.method public constructor <init>(Lcom/logitech/connect/client/transport/OaIQ;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "original"
    .parameter "errorCode"
    .parameter "errorString"
    .parameter "body"

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/logitech/connect/client/transport/OaIQ;->mConnectionId:I

    .line 60
    invoke-virtual {p1}, Lcom/logitech/connect/client/transport/OaIQ;->getFrom()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/logitech/connect/client/transport/OaIQ;->setTo(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Lcom/logitech/connect/client/transport/OaIQ;->getTo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/logitech/connect/client/transport/OaIQ;->setFrom(Ljava/lang/String;)V

    .line 62
    iget-object v0, p1, Lcom/logitech/connect/client/transport/OaIQ;->mMimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/logitech/connect/client/transport/OaIQ;->mMimeType:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/logitech/connect/client/transport/OaIQ;->mErrorCode:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/logitech/connect/client/transport/OaIQ;->mErrorString:Ljava/lang/String;

    .line 65
    iput-object p4, p0, Lcom/logitech/connect/client/transport/OaIQ;->mBody:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Lcom/logitech/connect/client/transport/OaIQ;->getPacketID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/logitech/connect/client/transport/OaIQ;->setPacketID(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "from"
    .parameter "uri"
    .parameter "body"

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/logitech/connect/client/transport/OaIQ;->mConnectionId:I

    .line 54
    invoke-virtual {p0, p1}, Lcom/logitech/connect/client/transport/OaIQ;->setFrom(Ljava/lang/String;)V

    .line 55
    iput-object p2, p0, Lcom/logitech/connect/client/transport/OaIQ;->mMimeType:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/logitech/connect/client/transport/OaIQ;->mBody:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "mUserName"
    .parameter "id"
    .parameter "uri"
    .parameter "body"

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/logitech/connect/client/transport/OaIQ;->mConnectionId:I

    .line 69
    invoke-virtual {p0, p1}, Lcom/logitech/connect/client/transport/OaIQ;->setFrom(Ljava/lang/String;)V

    .line 70
    iput-object p3, p0, Lcom/logitech/connect/client/transport/OaIQ;->mMimeType:Ljava/lang/String;

    .line 71
    iput-object p4, p0, Lcom/logitech/connect/client/transport/OaIQ;->mBody:Ljava/lang/String;

    .line 72
    invoke-virtual {p0, p2}, Lcom/logitech/connect/client/transport/OaIQ;->setPacketID(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .parameter "parser"

    .prologue
    const/4 v4, 0x0

    .line 29
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 26
    const/4 v3, -0x1

    iput v3, p0, Lcom/logitech/connect/client/transport/OaIQ;->mConnectionId:I

    .line 30
    const-string v3, "mime"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/logitech/connect/client/transport/OaIQ;->mMimeType:Ljava/lang/String;

    .line 31
    const-string v3, "errorcode"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/logitech/connect/client/transport/OaIQ;->mErrorCode:Ljava/lang/String;

    .line 32
    const-string v3, "errorstring"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/logitech/connect/client/transport/OaIQ;->mErrorString:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .local v0, content:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 36
    .local v2, parserDepth:I
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 38
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 41
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 42
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "PARSER ERROR"

    iput-object v3, p0, Lcom/logitech/connect/client/transport/OaIQ;->mBody:Ljava/lang/String;

    .line 44
    .end local v1           #e:Ljava/lang/Exception;
    :goto_1
    return-void

    .line 40
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/logitech/connect/client/transport/OaIQ;->mBody:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 0
    .parameter "parser"
    .parameter "connectionId"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/logitech/connect/client/transport/OaIQ;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 48
    iput p2, p0, Lcom/logitech/connect/client/transport/OaIQ;->mConnectionId:I

    .line 50
    return-void
.end method


# virtual methods
.method public createOpenApiResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/logitech/connect/client/transport/IOpenApiRequest;
    .locals 1
    .parameter "errorCode"
    .parameter "errorString"
    .parameter "body"

    .prologue
    .line 116
    new-instance v0, Lcom/logitech/connect/client/transport/OaIQ;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/logitech/connect/client/transport/OaIQ;-><init>(Lcom/logitech/connect/client/transport/OaIQ;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/logitech/connect/client/transport/OaIQ;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public getChildElementXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "<oa xmlns=\'connect.logitech.com\' mime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/logitech/connect/client/transport/OaIQ;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object v1, p0, Lcom/logitech/connect/client/transport/OaIQ;->mErrorCode:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 80
    const-string v1, " errorcode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/logitech/connect/client/transport/OaIQ;->mErrorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/logitech/connect/client/transport/OaIQ;->mErrorString:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 82
    const-string v1, " errorstring=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/logitech/connect/client/transport/OaIQ;->mErrorString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :cond_1
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/logitech/connect/client/transport/OaIQ;->mBody:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</oa>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCompleted()Z
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/logitech/connect/client/transport/OaIQ;->mErrorCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/logitech/connect/client/transport/OaIQ;->mErrorCode:Ljava/lang/String;

    const-string v1, "200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConnectionId()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/logitech/connect/client/transport/OaIQ;->mConnectionId:I

    return v0
.end method

.method public getContinued()Z
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/logitech/connect/client/transport/OaIQ;->mErrorCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/logitech/connect/client/transport/OaIQ;->mErrorCode:Ljava/lang/String;

    const-string v1, "100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/logitech/connect/client/transport/OaIQ;->mErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/logitech/connect/client/transport/OaIQ;->mErrorString:Ljava/lang/String;

    return-object v0
.end method

.method public getFailed()Z
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/logitech/connect/client/transport/OaIQ;->getCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/logitech/connect/client/transport/OaIQ;->getContinued()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/logitech/connect/client/transport/OaIQ;->getPacketID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/logitech/connect/client/transport/OaIQ;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const-string v0, "oa"

    return-object v0
.end method

.method public getNameValuePairs()Lcom/logitech/connect/client/transport/NameValuePairs;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/logitech/connect/client/transport/OaIQ;->mPairs:Lcom/logitech/connect/client/transport/NameValuePairs;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/logitech/connect/client/transport/OaIQ;->mPairs:Lcom/logitech/connect/client/transport/NameValuePairs;

    .line 123
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/logitech/connect/client/transport/OaIQ;->mBody:Ljava/lang/String;

    invoke-static {v0}, Lcom/logitech/connect/client/transport/NameValuePairs;->obtainValueKeyPairs(Ljava/lang/String;)Lcom/logitech/connect/client/transport/NameValuePairs;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/connect/client/transport/OaIQ;->mPairs:Lcom/logitech/connect/client/transport/NameValuePairs;

    goto :goto_0
.end method

.method public getResponseAsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/logitech/connect/client/transport/OaIQ;->mBody:Ljava/lang/String;

    return-object v0
.end method
