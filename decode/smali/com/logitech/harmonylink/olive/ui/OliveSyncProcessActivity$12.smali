.class Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$12;
.super Ljava/lang/Object;
.source "OliveSyncProcessActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->showOliveAuthAlertDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 810
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$12;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 811
    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$12;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mConnectClient:Lcom/logitech/connect/ConnectClient;
    invoke-static {v3}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$400(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Lcom/logitech/connect/ConnectClient;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/logitech/connect/ConnectClient;->setOlivePasswordChanged(Z)V

    .line 812
    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$12;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->finish()V

    .line 814
    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$12;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    invoke-static {v3}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getSharedPrefs(Landroid/content/Context;)Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    move-result-object v2

    .line 816
    .local v2, prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 817
    .local v0, b:Landroid/os/Bundle;
    const-string v3, "targetname"

    const-string v4, "connectedOliveEmail"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getStringWithName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    const-string v3, "position"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 820
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$12;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    const-class v4, Lcom/logitech/harmonylink/context/LoginActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 822
    .local v1, loginScreen:Landroid/content/Intent;
    const/high16 v3, 0x400

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 823
    const-string v3, "target"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 824
    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$12;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    invoke-virtual {v3, v1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->startActivity(Landroid/content/Intent;)V

    .line 825
    return-void
.end method
