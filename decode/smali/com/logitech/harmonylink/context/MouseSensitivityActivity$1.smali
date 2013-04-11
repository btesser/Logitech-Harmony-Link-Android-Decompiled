.class Lcom/logitech/harmonylink/context/MouseSensitivityActivity$1;
.super Ljava/lang/Object;
.source "MouseSensitivityActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/MouseSensitivityActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/MouseSensitivityActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/MouseSensitivityActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/logitech/harmonylink/context/MouseSensitivityActivity$1;->this$0:Lcom/logitech/harmonylink/context/MouseSensitivityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 52
    iget-object v1, p0, Lcom/logitech/harmonylink/context/MouseSensitivityActivity$1;->this$0:Lcom/logitech/harmonylink/context/MouseSensitivityActivity;

    invoke-static {v1}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getSharedPrefs(Landroid/content/Context;)Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    move-result-object v0

    .line 55
    .local v0, prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    const-string v1, "xscale"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/logitech/harmonylink/context/MouseSensitivityActivity$1;->this$0:Lcom/logitech/harmonylink/context/MouseSensitivityActivity;

    iget-wide v3, v3, Lcom/logitech/harmonylink/context/MouseSensitivityActivity;->mscale:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v1, "yscale"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/logitech/harmonylink/context/MouseSensitivityActivity$1;->this$0:Lcom/logitech/harmonylink/context/MouseSensitivityActivity;

    iget-wide v3, v3, Lcom/logitech/harmonylink/context/MouseSensitivityActivity;->mscale:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/logitech/harmonylink/context/MouseSensitivityActivity;->access$000()Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/logitech/harmonylink/context/MouseSensitivityActivity$1;->this$0:Lcom/logitech/harmonylink/context/MouseSensitivityActivity;

    iget-wide v2, v2, Lcom/logitech/harmonylink/context/MouseSensitivityActivity;->mscale:D

    iget-object v4, p0, Lcom/logitech/harmonylink/context/MouseSensitivityActivity$1;->this$0:Lcom/logitech/harmonylink/context/MouseSensitivityActivity;

    iget-wide v4, v4, Lcom/logitech/harmonylink/context/MouseSensitivityActivity;->mscale:D

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->notifyTrackPadObservers(DD)V

    .line 58
    iget-object v1, p0, Lcom/logitech/harmonylink/context/MouseSensitivityActivity$1;->this$0:Lcom/logitech/harmonylink/context/MouseSensitivityActivity;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/context/MouseSensitivityActivity;->finish()V

    .line 61
    return-void
.end method
