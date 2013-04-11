.class Lcom/logitech/harmonylink/context/LoginActivity$3;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/LoginActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/logitech/harmonylink/context/LoginActivity$3;->this$0:Lcom/logitech/harmonylink/context/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "arg0"

    .prologue
    const/4 v6, 0x1

    .line 174
    iget-object v3, p0, Lcom/logitech/harmonylink/context/LoginActivity$3;->this$0:Lcom/logitech/harmonylink/context/LoginActivity;

    #getter for: Lcom/logitech/harmonylink/context/LoginActivity;->mUser:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/logitech/harmonylink/context/LoginActivity;->access$600(Lcom/logitech/harmonylink/context/LoginActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, userId:Ljava/lang/String;
    iget-object v3, p0, Lcom/logitech/harmonylink/context/LoginActivity$3;->this$0:Lcom/logitech/harmonylink/context/LoginActivity;

    #getter for: Lcom/logitech/harmonylink/context/LoginActivity;->mPassword:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/logitech/harmonylink/context/LoginActivity;->access$700(Lcom/logitech/harmonylink/context/LoginActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, pwd:Ljava/lang/String;
    invoke-static {}, Lcom/logitech/harmonylink/context/LoginActivity;->access$800()Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    move-result-object v3

    iget-object v3, v3, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v3}, Lcom/logitech/connect/ConnectClient;->isOlivePasswordChanged()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 177
    iget-object v3, p0, Lcom/logitech/harmonylink/context/LoginActivity$3;->this$0:Lcom/logitech/harmonylink/context/LoginActivity;

    #setter for: Lcom/logitech/harmonylink/context/LoginActivity;->mGoToHomeWhenAuthenticated:Z
    invoke-static {v3, v6}, Lcom/logitech/harmonylink/context/LoginActivity;->access$902(Lcom/logitech/harmonylink/context/LoginActivity;Z)Z

    .line 179
    :cond_0
    new-instance v1, Lcom/logitech/harmonylink/context/LoginActivity$UserAuthTask;

    iget-object v3, p0, Lcom/logitech/harmonylink/context/LoginActivity$3;->this$0:Lcom/logitech/harmonylink/context/LoginActivity;

    invoke-direct {v1, v3}, Lcom/logitech/harmonylink/context/LoginActivity$UserAuthTask;-><init>(Lcom/logitech/harmonylink/context/LoginActivity;)V

    .line 180
    .local v1, task:Lcom/logitech/harmonylink/context/LoginActivity$UserAuthTask;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {}, Lcom/logitech/harmonylink/context/LoginActivity;->access$1000()Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getDiscoveryServiceUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object v2, v3, v6

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-virtual {v1, v3}, Lcom/logitech/harmonylink/context/LoginActivity$UserAuthTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 181
    return-void
.end method
