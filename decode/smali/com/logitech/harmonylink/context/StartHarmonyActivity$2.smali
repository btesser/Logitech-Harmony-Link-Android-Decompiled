.class Lcom/logitech/harmonylink/context/StartHarmonyActivity$2;
.super Ljava/lang/Object;
.source "StartHarmonyActivity.java"

# interfaces
.implements Lcom/logitech/connect/IGlobalResponseObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/context/StartHarmonyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/StartHarmonyActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/StartHarmonyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity$2;->this$0:Lcom/logitech/harmonylink/context/StartHarmonyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPacketSendingFailed(I)V
    .locals 2
    .parameter "errorCode"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity$2;->this$0:Lcom/logitech/harmonylink/context/StartHarmonyActivity;

    const/4 v1, 0x0

    #setter for: Lcom/logitech/harmonylink/context/StartHarmonyActivity;->hasUpdated:Z
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->access$102(Lcom/logitech/harmonylink/context/StartHarmonyActivity;Z)Z

    .line 86
    return-void
.end method

.method public onPacketSendingStarted()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public onPacketSendingSucceeded()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public onServiceUnauthorized()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public onServiceUnavailable()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method
