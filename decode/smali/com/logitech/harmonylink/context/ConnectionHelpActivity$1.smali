.class Lcom/logitech/harmonylink/context/ConnectionHelpActivity$1;
.super Ljava/lang/Object;
.source "ConnectionHelpActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/ConnectionHelpActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 33
    iput-object p1, p0, Lcom/logitech/harmonylink/context/ConnectionHelpActivity$1;->this$0:Lcom/logitech/harmonylink/context/ConnectionHelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 34
    invoke-static {}, Lcom/logitech/harmonylink/context/ConnectionHelpActivity;->access$100()Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getConnectClient()Lcom/logitech/connect/ConnectClient;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/context/ConnectionHelpActivity$1;->this$0:Lcom/logitech/harmonylink/context/ConnectionHelpActivity;

    #getter for: Lcom/logitech/harmonylink/context/ConnectionHelpActivity;->mGlobalResonseObserver:Lcom/logitech/connect/IGlobalResponseObserver;
    invoke-static {v1}, Lcom/logitech/harmonylink/context/ConnectionHelpActivity;->access$000(Lcom/logitech/harmonylink/context/ConnectionHelpActivity;)Lcom/logitech/connect/IGlobalResponseObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/logitech/connect/ConnectClient;->addGlobalResponseObserver(Lcom/logitech/connect/IGlobalResponseObserver;)V

    .line 35
    return-void
.end method
