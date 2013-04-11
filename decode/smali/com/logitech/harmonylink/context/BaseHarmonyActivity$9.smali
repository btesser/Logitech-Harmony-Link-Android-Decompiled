.class Lcom/logitech/harmonylink/context/BaseHarmonyActivity$9;
.super Landroid/content/BroadcastReceiver;
.source "BaseHarmonyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/BaseHarmonyActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/BaseHarmonyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity$9;->this$0:Lcom/logitech/harmonylink/context/BaseHarmonyActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 307
    iget-object v3, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity$9;->this$0:Lcom/logitech/harmonylink/context/BaseHarmonyActivity;

    iget-object v3, v3, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/harmony/Dom;->getCurrentViewingActivity()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, currentViewingActivity:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 309
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 310
    const-string v3, "currentActivity"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, startedActivity:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 312
    const-string v3, "-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 313
    iget-object v3, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity$9;->this$0:Lcom/logitech/harmonylink/context/BaseHarmonyActivity;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->startOneTouch()V

    .line 322
    .end local v2           #startedActivity:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 315
    .restart local v2       #startedActivity:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 316
    iget-object v3, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity$9;->this$0:Lcom/logitech/harmonylink/context/BaseHarmonyActivity;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->reloadControls()V

    goto :goto_0
.end method
