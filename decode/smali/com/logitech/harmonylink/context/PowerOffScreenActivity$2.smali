.class Lcom/logitech/harmonylink/context/PowerOffScreenActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "PowerOffScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/PowerOffScreenActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/PowerOffScreenActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/PowerOffScreenActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/logitech/harmonylink/context/PowerOffScreenActivity$2;->this$0:Lcom/logitech/harmonylink/context/PowerOffScreenActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 63
    iget-object v3, p0, Lcom/logitech/harmonylink/context/PowerOffScreenActivity$2;->this$0:Lcom/logitech/harmonylink/context/PowerOffScreenActivity;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/context/PowerOffScreenActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    .line 64
    .local v0, dom:Lcom/logitech/harmonylink/harmony/Dom;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 65
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 66
    const-string v3, "currentActivity"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, startedActivity:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 68
    const-string v3, "-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/Dom;->hasPowerOffStarted()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/Dom;->hasPowerOffReturned()Z

    move-result v3

    if-nez v3, :cond_0

    .line 69
    invoke-virtual {v0, v4}, Lcom/logitech/harmonylink/harmony/Dom;->setHasPowerOffReturned(Z)V

    .line 70
    invoke-virtual {v0, v4}, Lcom/logitech/harmonylink/harmony/Dom;->setHasPowerOffStarted(Z)V

    .line 71
    iget-object v3, p0, Lcom/logitech/harmonylink/context/PowerOffScreenActivity$2;->this$0:Lcom/logitech/harmonylink/context/PowerOffScreenActivity;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/context/PowerOffScreenActivity;->startOneTouch()V

    .line 76
    .end local v2           #startedActivity:Ljava/lang/String;
    :cond_0
    return-void
.end method
