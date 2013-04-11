.class public Lcom/logitech/connect/client/transport/DefaultMessage;
.super Ljava/lang/Object;
.source "DefaultMessage.java"

# interfaces
.implements Lcom/logitech/connect/client/transport/IMessage;


# instance fields
.field mBody:Ljava/lang/String;

.field mName:Ljava/lang/String;

.field mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "elementName"
    .parameter "namespace"
    .parameter "body"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/logitech/connect/client/transport/DefaultMessage;->mName:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/logitech/connect/client/transport/DefaultMessage;->mUri:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/logitech/connect/client/transport/DefaultMessage;->mBody:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/logitech/connect/client/transport/DefaultMessage;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/logitech/connect/client/transport/DefaultMessage;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/logitech/connect/client/transport/DefaultMessage;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/logitech/connect/client/transport/DefaultMessage;->mBody:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/logitech/connect/client/transport/DefaultMessage;->mName:Ljava/lang/String;

    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/logitech/connect/client/transport/DefaultMessage;->mUri:Ljava/lang/String;

    return-void
.end method
