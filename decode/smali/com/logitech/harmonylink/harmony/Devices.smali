.class public Lcom/logitech/harmonylink/harmony/Devices;
.super Ljava/util/ArrayList;
.source "Devices.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/logitech/harmonylink/harmony/Device;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5fcba860ac399a01L


# instance fields
.field private mInitialized:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/logitech/harmonylink/harmony/Devices;->mInitialized:Z

    .line 24
    return-void
.end method

.method public getDevice(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Device;
    .locals 3
    .parameter "id"

    .prologue
    .line 30
    if-eqz p1, :cond_1

    .line 31
    invoke-virtual {p0}, Lcom/logitech/harmonylink/harmony/Devices;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/harmony/Device;

    .line 32
    .local v0, a:Lcom/logitech/harmonylink/harmony/Device;
    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/Device;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 37
    .end local v0           #a:Lcom/logitech/harmonylink/harmony/Device;
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDeviceOfType(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Device;
    .locals 3
    .parameter "type"

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/logitech/harmonylink/harmony/Devices;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/harmony/Device;

    .line 42
    .local v0, d:Lcom/logitech/harmonylink/harmony/Device;
    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 45
    .end local v0           #d:Lcom/logitech/harmonylink/harmony/Device;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getInitialized()Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/logitech/harmonylink/harmony/Devices;->mInitialized:Z

    return v0
.end method
