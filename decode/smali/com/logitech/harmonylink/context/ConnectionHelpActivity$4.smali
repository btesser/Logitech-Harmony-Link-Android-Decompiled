.class Lcom/logitech/harmonylink/context/ConnectionHelpActivity$4;
.super Ljava/lang/Object;
.source "ConnectionHelpActivity.java"

# interfaces
.implements Lcom/logitech/connect/IGlobalResponseObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/context/ConnectionHelpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/ConnectionHelpActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/ConnectionHelpActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/logitech/harmonylink/context/ConnectionHelpActivity$4;->this$0:Lcom/logitech/harmonylink/context/ConnectionHelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPacketSendingFailed(I)V
    .locals 0
    .parameter "errorCode"

    .prologue
    .line 85
    .line 100
    return-void
.end method

.method public onPacketSendingStarted()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public onPacketSendingSucceeded()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public onServiceUnauthorized()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public onServiceUnavailable()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method
