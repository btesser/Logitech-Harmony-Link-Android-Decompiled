.class Lcom/logitech/harmonylink/context/HelpActivity$1;
.super Ljava/lang/Object;
.source "HelpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/HelpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/HelpActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/HelpActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/logitech/harmonylink/context/HelpActivity$1;->this$0:Lcom/logitech/harmonylink/context/HelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 68
    invoke-static {}, Lcom/logitech/harmonylink/context/HelpActivity;->access$100()Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    const-string v1, "vnd.logitech.launcher/vnd.logitech.launcher.cs"

    const-string v2, ""

    new-instance v3, Lcom/logitech/harmonylink/context/HelpActivity$1$1;

    invoke-direct {v3, p0}, Lcom/logitech/harmonylink/context/HelpActivity$1$1;-><init>(Lcom/logitech/harmonylink/context/HelpActivity$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/logitech/connect/ConnectClient;->sendNewRequest(Ljava/lang/String;Ljava/lang/String;Lcom/logitech/connect/client/transport/IResponseHandler;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 79
    return-void
.end method
