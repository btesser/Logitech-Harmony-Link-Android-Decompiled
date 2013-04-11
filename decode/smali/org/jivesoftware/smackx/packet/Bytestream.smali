.class public Lorg/jivesoftware/smackx/packet/Bytestream;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "Bytestream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/packet/Bytestream$Mode;,
        Lorg/jivesoftware/smackx/packet/Bytestream$Activate;,
        Lorg/jivesoftware/smackx/packet/Bytestream$StreamHostUsed;,
        Lorg/jivesoftware/smackx/packet/Bytestream$StreamHost;
    }
.end annotation


# instance fields
.field private mode:Lorg/jivesoftware/smackx/packet/Bytestream$Mode;

.field private sessionID:Ljava/lang/String;

.field private final streamHosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/packet/Bytestream$StreamHost;",
            ">;"
        }
    .end annotation
.end field

.field private toActivate:Lorg/jivesoftware/smackx/packet/Bytestream$Activate;

.field private usedHost:Lorg/jivesoftware/smackx/packet/Bytestream$StreamHostUsed;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 36
    sget-object v0, Lorg/jivesoftware/smackx/packet/Bytestream$Mode;->tcp:Lorg/jivesoftware/smackx/packet/Bytestream$Mode;

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/Bytestream;->mode:Lorg/jivesoftware/smackx/packet/Bytestream$Mode;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/Bytestream;->streamHosts:Ljava/util/List;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 36
    sget-object v0, Lorg/jivesoftware/smackx/packet/Bytestream$Mode;->tcp:Lorg/jivesoftware/smackx/packet/Bytestream$Mode;

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/Bytestream;->mode:Lorg/jivesoftware/smackx/packet/Bytestream$Mode;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/Bytestream;->streamHosts:Ljava/util/List;

    .line 59
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/packet/Bytestream;->setSessionID(Ljava/lang/String;)V

    .line 60
    return-void
.end method


# virtual methods
.method public addStreamHost(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/Bytestream$StreamHost;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/packet/Bytestream;->addStreamHost(Ljava/lang/String;Ljava/lang/String;I)Lorg/jivesoftware/smackx/packet/Bytestream$StreamHost;

    move-result-object v0

    return-object v0
.end method

.method public addStreamHost(Ljava/lang/String;Ljava/lang/String;I)Lorg/jivesoftware/smackx/packet/Bytestream$StreamHost;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    new-instance v0, Lorg/jivesoftware/smackx/packet/Bytestream$StreamHost;

    invoke-direct {v0, p1, p2}, Lorg/jivesoftware/smackx/packet/Bytestream$StreamHost;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0, p3}, Lorg/jivesoftware/smackx/packet/Bytestream$StreamHost;->setPort(I)V

    .line 128
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/packet/Bytestream;->addStreamHost(Lorg/jivesoftware/smackx/packet/Bytestream$StreamHost;)V

    .line 130
    return-object v0
.end method

.method public addStreamHost(Lorg/jivesoftware/smackx/packet/Bytestream$StreamHost;)V
    .locals 1
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/Bytestream;->streamHosts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    return-void
.end method

.method public countStreamHosts()I
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/Bytestream;->streamHosts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getChildElementXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    const-string v1, "<query xmlns=\"http://jabber.org/protocol/bytestreams\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/Bytestream;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 231
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/Bytestream;->getSessionID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 232
    const-string v1, " sid=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/Bytestream;->getSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/Bytestream;->getMode()Lorg/jivesoftware/smackx/packet/Bytestream$Mode;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 234
    const-string v1, " mode = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/Bytestream;->getMode()Lorg/jivesoftware/smackx/packet/Bytestream$Mode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    :cond_1
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/Bytestream;->getToActivate()Lorg/jivesoftware/smackx/packet/Bytestream$Activate;

    move-result-object v1

    if-nez v1, :cond_2

    .line 237
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/Bytestream;->getStreamHosts()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smackx/packet/Bytestream$StreamHost;

    .line 238
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/Bytestream$StreamHost;->toXML()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 242
    :cond_2
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/Bytestream;->getToActivate()Lorg/jivesoftware/smackx/packet/Bytestream$Activate;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/Bytestream$Activate;->toXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_3
    :goto_1
    const-string v1, "</query>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    .line 245
    :cond_4
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/Bytestream;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 246
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/Bytestream;->getUsedHost()Lorg/jivesoftware/smackx/packet/Bytestream$StreamHostUsed;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 248
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/Bytestream;->getUsedHost()Lorg/jivesoftware/smackx/packet/Bytestream$StreamHostUsed;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/Bytestream$StreamHostUsed;->toXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 250
    :cond_5
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/Bytestream;->countStreamHosts()I

    move-result v1

    if-lez v1, :cond_3

    .line 251
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/Bytestream;->streamHosts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smackx/packet/Bytestream$StreamHost;

    .line 252
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/Bytestream$StreamHost;->toXML()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 257
    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public getMode()Lorg/jivesoftware/smackx/packet/Bytestream$Mode;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/Bytestream;->mode:Lorg/jivesoftware/smackx/packet/Bytestream$Mode;

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/Bytestream;->sessionID:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamHost(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/Bytestream$StreamHost;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 161
    if-nez p1, :cond_0

    move-object v0, v2

    .line 170
    :goto_0
    return-object v0

    .line 164
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/Bytestream;->streamHosts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smackx/packet/Bytestream$StreamHost;

    .line 165
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/Bytestream$StreamHost;->getJID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p0

    .line 166
    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 170
    goto :goto_0
.end method

.method public getStreamHosts()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smackx/packet/Bytestream$StreamHost;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/Bytestream;->streamHosts:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getToActivate()Lorg/jivesoftware/smackx/packet/Bytestream$Activate;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/Bytestream;->toActivate:Lorg/jivesoftware/smackx/packet/Bytestream$Activate;

    return-object v0
.end method

.method public getUsedHost()Lorg/jivesoftware/smackx/packet/Bytestream$StreamHostUsed;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/Bytestream;->usedHost:Lorg/jivesoftware/smackx/packet/Bytestream$StreamHostUsed;

    return-object v0
.end method

.method public setMode(Lorg/jivesoftware/smackx/packet/Bytestream$Mode;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/Bytestream;->mode:Lorg/jivesoftware/smackx/packet/Bytestream$Mode;

    .line 91
    return-void
.end method

.method public setSessionID(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/Bytestream;->sessionID:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setToActivate(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 223
    new-instance v0, Lorg/jivesoftware/smackx/packet/Bytestream$Activate;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smackx/packet/Bytestream$Activate;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/Bytestream;->toActivate:Lorg/jivesoftware/smackx/packet/Bytestream$Activate;

    .line 224
    return-void
.end method

.method public setUsedHost(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 189
    new-instance v0, Lorg/jivesoftware/smackx/packet/Bytestream$StreamHostUsed;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smackx/packet/Bytestream$StreamHostUsed;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/Bytestream;->usedHost:Lorg/jivesoftware/smackx/packet/Bytestream$StreamHostUsed;

    .line 190
    return-void
.end method
