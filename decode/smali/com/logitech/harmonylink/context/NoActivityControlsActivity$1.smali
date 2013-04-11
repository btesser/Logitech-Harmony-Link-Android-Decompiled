.class Lcom/logitech/harmonylink/context/NoActivityControlsActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "NoActivityControlsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/NoActivityControlsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/NoActivityControlsActivity;

.field final synthetic val$dom:Lcom/logitech/harmonylink/harmony/Dom;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/NoActivityControlsActivity;Lcom/logitech/harmonylink/harmony/Dom;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/logitech/harmonylink/context/NoActivityControlsActivity$1;->this$0:Lcom/logitech/harmonylink/context/NoActivityControlsActivity;

    iput-object p2, p0, Lcom/logitech/harmonylink/context/NoActivityControlsActivity$1;->val$dom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 37
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 38
    const-string v2, "currentActivity"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, startedActivity:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 40
    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 41
    iget-object v2, p0, Lcom/logitech/harmonylink/context/NoActivityControlsActivity$1;->this$0:Lcom/logitech/harmonylink/context/NoActivityControlsActivity;

    iget-object v3, p0, Lcom/logitech/harmonylink/context/NoActivityControlsActivity$1;->this$0:Lcom/logitech/harmonylink/context/NoActivityControlsActivity;

    const v4, 0x7f060023

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/logitech/harmonylink/context/NoActivityControlsActivity$1;->val$dom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v6}, Lcom/logitech/harmonylink/harmony/Dom;->getCurrentActivity()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/logitech/harmonylink/context/NoActivityControlsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v7}, Lcom/logitech/harmonylink/context/NoActivityControlsActivity;->showAlertDialog(Ljava/lang/String;Z)V

    .line 49
    .end local v1           #startedActivity:Ljava/lang/String;
    :cond_0
    return-void
.end method
