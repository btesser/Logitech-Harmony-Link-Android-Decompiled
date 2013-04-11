.class final Lcom/kenai/jbosh/CMSessionParams;
.super Ljava/lang/Object;
.source "CMSessionParams.java"


# instance fields
.field private final accept:Lcom/kenai/jbosh/AttrAccept;

.field private final ack:Lcom/kenai/jbosh/AttrAck;

.field private final ackingRequests:Z

.field private final charsets:Lcom/kenai/jbosh/AttrCharsets;

.field private final hold:Lcom/kenai/jbosh/AttrHold;

.field private final inactivity:Lcom/kenai/jbosh/AttrInactivity;

.field private final maxPause:Lcom/kenai/jbosh/AttrMaxPause;

.field private final polling:Lcom/kenai/jbosh/AttrPolling;

.field private final requests:Lcom/kenai/jbosh/AttrRequests;

.field private final sid:Lcom/kenai/jbosh/AttrSessionID;

.field private final ver:Lcom/kenai/jbosh/AttrVersion;

.field private final wait:Lcom/kenai/jbosh/AttrWait;


# direct methods
.method private constructor <init>(Lcom/kenai/jbosh/AttrSessionID;Lcom/kenai/jbosh/AttrWait;Lcom/kenai/jbosh/AttrVersion;Lcom/kenai/jbosh/AttrPolling;Lcom/kenai/jbosh/AttrInactivity;Lcom/kenai/jbosh/AttrRequests;Lcom/kenai/jbosh/AttrHold;Lcom/kenai/jbosh/AttrAccept;Lcom/kenai/jbosh/AttrMaxPause;Lcom/kenai/jbosh/AttrAck;Lcom/kenai/jbosh/AttrCharsets;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/kenai/jbosh/CMSessionParams;->sid:Lcom/kenai/jbosh/AttrSessionID;

    .line 67
    iput-object p2, p0, Lcom/kenai/jbosh/CMSessionParams;->wait:Lcom/kenai/jbosh/AttrWait;

    .line 68
    iput-object p3, p0, Lcom/kenai/jbosh/CMSessionParams;->ver:Lcom/kenai/jbosh/AttrVersion;

    .line 69
    iput-object p4, p0, Lcom/kenai/jbosh/CMSessionParams;->polling:Lcom/kenai/jbosh/AttrPolling;

    .line 70
    iput-object p5, p0, Lcom/kenai/jbosh/CMSessionParams;->inactivity:Lcom/kenai/jbosh/AttrInactivity;

    .line 71
    iput-object p6, p0, Lcom/kenai/jbosh/CMSessionParams;->requests:Lcom/kenai/jbosh/AttrRequests;

    .line 72
    iput-object p7, p0, Lcom/kenai/jbosh/CMSessionParams;->hold:Lcom/kenai/jbosh/AttrHold;

    .line 73
    iput-object p8, p0, Lcom/kenai/jbosh/CMSessionParams;->accept:Lcom/kenai/jbosh/AttrAccept;

    .line 74
    iput-object p9, p0, Lcom/kenai/jbosh/CMSessionParams;->maxPause:Lcom/kenai/jbosh/AttrMaxPause;

    .line 75
    iput-object p10, p0, Lcom/kenai/jbosh/CMSessionParams;->ack:Lcom/kenai/jbosh/AttrAck;

    .line 76
    iput-object p11, p0, Lcom/kenai/jbosh/CMSessionParams;->charsets:Lcom/kenai/jbosh/AttrCharsets;

    .line 77
    iput-boolean p12, p0, Lcom/kenai/jbosh/CMSessionParams;->ackingRequests:Z

    .line 78
    return-void
.end method

.method static fromSessionInit(Lcom/kenai/jbosh/AbstractBody;Lcom/kenai/jbosh/AbstractBody;)Lcom/kenai/jbosh/CMSessionParams;
    .locals 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kenai/jbosh/BOSHException;
        }
    .end annotation

    .prologue
    .line 84
    sget-object v0, Lcom/kenai/jbosh/Attributes;->ACK:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p1, v0}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kenai/jbosh/AttrAck;->createFromString(Ljava/lang/String;)Lcom/kenai/jbosh/AttrAck;

    move-result-object v10

    .line 86
    sget-object v0, Lcom/kenai/jbosh/Attributes;->RID:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p0, v0}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v0

    .line 87
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/kenai/jbosh/AttrAck;->getValue()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v12, v0

    .line 89
    :goto_0
    new-instance v0, Lcom/kenai/jbosh/CMSessionParams;

    sget-object v1, Lcom/kenai/jbosh/Attributes;->SID:Lcom/kenai/jbosh/BodyQName;

    invoke-static {p1, v1}, Lcom/kenai/jbosh/CMSessionParams;->getRequiredAttribute(Lcom/kenai/jbosh/AbstractBody;Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kenai/jbosh/AttrSessionID;->createFromString(Ljava/lang/String;)Lcom/kenai/jbosh/AttrSessionID;

    move-result-object v1

    sget-object v2, Lcom/kenai/jbosh/Attributes;->WAIT:Lcom/kenai/jbosh/BodyQName;

    invoke-static {p1, v2}, Lcom/kenai/jbosh/CMSessionParams;->getRequiredAttribute(Lcom/kenai/jbosh/AbstractBody;Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kenai/jbosh/AttrWait;->createFromString(Ljava/lang/String;)Lcom/kenai/jbosh/AttrWait;

    move-result-object v2

    sget-object v3, Lcom/kenai/jbosh/Attributes;->VER:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p1, v3}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kenai/jbosh/AttrVersion;->createFromString(Ljava/lang/String;)Lcom/kenai/jbosh/AttrVersion;

    move-result-object v3

    sget-object v4, Lcom/kenai/jbosh/Attributes;->POLLING:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p1, v4}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kenai/jbosh/AttrPolling;->createFromString(Ljava/lang/String;)Lcom/kenai/jbosh/AttrPolling;

    move-result-object v4

    sget-object v5, Lcom/kenai/jbosh/Attributes;->INACTIVITY:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p1, v5}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/kenai/jbosh/AttrInactivity;->createFromString(Ljava/lang/String;)Lcom/kenai/jbosh/AttrInactivity;

    move-result-object v5

    sget-object v6, Lcom/kenai/jbosh/Attributes;->REQUESTS:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p1, v6}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/kenai/jbosh/AttrRequests;->createFromString(Ljava/lang/String;)Lcom/kenai/jbosh/AttrRequests;

    move-result-object v6

    sget-object v7, Lcom/kenai/jbosh/Attributes;->HOLD:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p1, v7}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/kenai/jbosh/AttrHold;->createFromString(Ljava/lang/String;)Lcom/kenai/jbosh/AttrHold;

    move-result-object v7

    sget-object v8, Lcom/kenai/jbosh/Attributes;->ACCEPT:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p1, v8}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/kenai/jbosh/AttrAccept;->createFromString(Ljava/lang/String;)Lcom/kenai/jbosh/AttrAccept;

    move-result-object v8

    sget-object v9, Lcom/kenai/jbosh/Attributes;->MAXPAUSE:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p1, v9}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/kenai/jbosh/AttrMaxPause;->createFromString(Ljava/lang/String;)Lcom/kenai/jbosh/AttrMaxPause;

    move-result-object v9

    sget-object v11, Lcom/kenai/jbosh/Attributes;->CHARSETS:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p1, v11}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/kenai/jbosh/AttrCharsets;->createFromString(Ljava/lang/String;)Lcom/kenai/jbosh/AttrCharsets;

    move-result-object v11

    invoke-direct/range {v0 .. v12}, Lcom/kenai/jbosh/CMSessionParams;-><init>(Lcom/kenai/jbosh/AttrSessionID;Lcom/kenai/jbosh/AttrWait;Lcom/kenai/jbosh/AttrVersion;Lcom/kenai/jbosh/AttrPolling;Lcom/kenai/jbosh/AttrInactivity;Lcom/kenai/jbosh/AttrRequests;Lcom/kenai/jbosh/AttrHold;Lcom/kenai/jbosh/AttrAccept;Lcom/kenai/jbosh/AttrMaxPause;Lcom/kenai/jbosh/AttrAck;Lcom/kenai/jbosh/AttrCharsets;Z)V

    return-object v0

    .line 87
    :cond_0
    const/4 v0, 0x0

    move v12, v0

    goto :goto_0
.end method

.method private static getRequiredAttribute(Lcom/kenai/jbosh/AbstractBody;Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kenai/jbosh/BOSHException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v0

    .line 120
    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lcom/kenai/jbosh/BOSHException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection Manager session creation response did not include required \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/kenai/jbosh/BodyQName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' attribute"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    return-object v0
.end method


# virtual methods
.method getAccept()Lcom/kenai/jbosh/AttrAccept;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/kenai/jbosh/CMSessionParams;->accept:Lcom/kenai/jbosh/AttrAccept;

    return-object v0
.end method

.method getAck()Lcom/kenai/jbosh/AttrAck;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/kenai/jbosh/CMSessionParams;->ack:Lcom/kenai/jbosh/AttrAck;

    return-object v0
.end method

.method getCharsets()Lcom/kenai/jbosh/AttrCharsets;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/kenai/jbosh/CMSessionParams;->charsets:Lcom/kenai/jbosh/AttrCharsets;

    return-object v0
.end method

.method getHold()Lcom/kenai/jbosh/AttrHold;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/kenai/jbosh/CMSessionParams;->hold:Lcom/kenai/jbosh/AttrHold;

    return-object v0
.end method

.method getInactivityPeriod()Lcom/kenai/jbosh/AttrInactivity;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/kenai/jbosh/CMSessionParams;->inactivity:Lcom/kenai/jbosh/AttrInactivity;

    return-object v0
.end method

.method getMaxPause()Lcom/kenai/jbosh/AttrMaxPause;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/kenai/jbosh/CMSessionParams;->maxPause:Lcom/kenai/jbosh/AttrMaxPause;

    return-object v0
.end method

.method getPollingInterval()Lcom/kenai/jbosh/AttrPolling;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/kenai/jbosh/CMSessionParams;->polling:Lcom/kenai/jbosh/AttrPolling;

    return-object v0
.end method

.method getRequests()Lcom/kenai/jbosh/AttrRequests;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/kenai/jbosh/CMSessionParams;->requests:Lcom/kenai/jbosh/AttrRequests;

    return-object v0
.end method

.method getSessionID()Lcom/kenai/jbosh/AttrSessionID;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/kenai/jbosh/CMSessionParams;->sid:Lcom/kenai/jbosh/AttrSessionID;

    return-object v0
.end method

.method getVersion()Lcom/kenai/jbosh/AttrVersion;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/kenai/jbosh/CMSessionParams;->ver:Lcom/kenai/jbosh/AttrVersion;

    return-object v0
.end method

.method getWait()Lcom/kenai/jbosh/AttrWait;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/kenai/jbosh/CMSessionParams;->wait:Lcom/kenai/jbosh/AttrWait;

    return-object v0
.end method

.method isAckingRequests()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/kenai/jbosh/CMSessionParams;->ackingRequests:Z

    return v0
.end method
