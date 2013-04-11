.class public Lcom/logitech/harmonylink/harmony/Fixit;
.super Ljava/lang/Object;
.source "Fixit.java"


# instance fields
.field private mDeviceId:Ljava/lang/String;

.field private mInput:Ljava/lang/String;

.field private mIsRelatedPower:Z

.field private mKey:Ljava/lang/String;

.field private mPowerValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "id"
    .parameter "powerValue"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/logitech/harmonylink/harmony/Fixit;->mIsRelatedPower:Z

    .line 32
    iput-object p2, p0, Lcom/logitech/harmonylink/harmony/Fixit;->mDeviceId:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/logitech/harmonylink/harmony/Fixit;->mPowerValue:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/Fixit;->mKey:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Fixit;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getInput()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Fixit;->mInput:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Fixit;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPowerValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Fixit;->mPowerValue:Ljava/lang/String;

    return-object v0
.end method

.method public isRelatedPower()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/logitech/harmonylink/harmony/Fixit;->mIsRelatedPower:Z

    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/Fixit;->mDeviceId:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setInput(Ljava/lang/String;)V
    .locals 0
    .parameter "input"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/Fixit;->mInput:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/Fixit;->mKey:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setPowerValue(Ljava/lang/String;)V
    .locals 0
    .parameter "powerValue"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/Fixit;->mPowerValue:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setRelatedPower(Z)V
    .locals 0
    .parameter "isRelatedPower"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/logitech/harmonylink/harmony/Fixit;->mIsRelatedPower:Z

    .line 28
    return-void
.end method
