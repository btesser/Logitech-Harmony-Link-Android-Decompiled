.class public Lcom/logitech/connect/Target;
.super Ljava/lang/Object;
.source "Target.java"


# static fields
.field public static final CONNECTED:I = 0x3

.field public static final CONNECTING:I = 0x1

.field public static final DISBALED:I = 0x2

.field public static final READY:I = 0x0

.field public static final UPGRADING:I = 0x4


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mConnectionStatus:I

.field private mFwVersion:Ljava/lang/String;

.field protected mHostAddress:Ljava/lang/String;

.field protected mHostName:Ljava/lang/String;

.field protected mHubId:Ljava/lang/String;

.field private mHubStatus:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field protected mPort:I

.field protected mUid:Ljava/util/UUID;

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "hostAddress"
    .parameter "guid"
    .parameter "port"
    .parameter "version"

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/logitech/connect/Target;->mConnectionStatus:I

    .line 34
    const/16 v0, 0x1466

    iput v0, p0, Lcom/logitech/connect/Target;->mPort:I

    .line 36
    const-class v0, Lcom/logitech/connect/Target;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/connect/Target;->LOG_TAG:Ljava/lang/String;

    .line 103
    invoke-virtual {p0, p1}, Lcom/logitech/connect/Target;->setName(Ljava/lang/String;)V

    .line 105
    iput-object p2, p0, Lcom/logitech/connect/Target;->mHostAddress:Ljava/lang/String;

    .line 106
    invoke-static {p3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/connect/Target;->mUid:Ljava/util/UUID;

    .line 107
    iput-object p5, p0, Lcom/logitech/connect/Target;->mVersion:Ljava/lang/String;

    .line 108
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/logitech/connect/Target;->mPort:I

    .line 109
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    .line 117
    move-object v0, p1

    check-cast v0, Lcom/logitech/connect/Target;

    move-object v1, v0

    .line 118
    .local v1, t:Lcom/logitech/connect/Target;
    iget-object v2, p0, Lcom/logitech/connect/Target;->mUid:Ljava/util/UUID;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/logitech/connect/Target;->getGuid()Ljava/util/UUID;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 119
    iget-object v2, p0, Lcom/logitech/connect/Target;->mUid:Ljava/util/UUID;

    iget-object v3, v1, Lcom/logitech/connect/Target;->mUid:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 122
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getConnectionStatus()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/logitech/connect/Target;->mConnectionStatus:I

    return v0
.end method

.method public getFWVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/logitech/connect/Target;->mFwVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getGuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/logitech/connect/Target;->mUid:Ljava/util/UUID;

    return-object v0
.end method

.method public getHostAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/logitech/connect/Target;->mHostAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/logitech/connect/Target;->mHostName:Ljava/lang/String;

    return-object v0
.end method

.method public getHubId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/logitech/connect/Target;->mHubId:Ljava/lang/String;

    return-object v0
.end method

.method public getHubStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/logitech/connect/Target;->mHubStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/logitech/connect/Target;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/logitech/connect/Target;->mPort:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/logitech/connect/Target;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/logitech/connect/Target;->mUid:Ljava/util/UUID;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/logitech/connect/Target;->mUid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/logitech/connect/Target;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setConnectionStatus(I)V
    .locals 0
    .parameter "connectionStatus"

    .prologue
    .line 190
    iput p1, p0, Lcom/logitech/connect/Target;->mConnectionStatus:I

    .line 191
    return-void
.end method

.method public setFWVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "fwVersion"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/logitech/connect/Target;->mFwVersion:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setHostName(Ljava/lang/String;)V
    .locals 0
    .parameter "hostName"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/logitech/connect/Target;->mHostName:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setHubId(Ljava/lang/String;)V
    .locals 0
    .parameter "hubId"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/logitech/connect/Target;->mHubId:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setHubStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "hubStatus"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/logitech/connect/Target;->mHubStatus:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 112
    const-string v0, "+"

    const-string v1, "."

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/connect/Target;->mName:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 44
    .local v0, buf:Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "->mName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/logitech/connect/Target;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":mHostAddress"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/logitech/connect/Target;->mHostAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":guid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/logitech/connect/Target;->mUid:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/logitech/connect/Target;->mHubStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
