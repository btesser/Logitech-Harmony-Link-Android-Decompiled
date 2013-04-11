.class Lcom/logitech/harmonylink/ka1x/WatchGTVActivity$1;
.super Ljava/lang/Object;
.source "WatchGTVActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity$1;->this$0:Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 80
    invoke-static {}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->access$100()Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getConnectClient()Lcom/logitech/connect/ConnectClient;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity$1;->this$0:Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;

    #getter for: Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mGlobalResonseObserver:Lcom/logitech/connect/IGlobalResponseObserver;
    invoke-static {v1}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->access$000(Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;)Lcom/logitech/connect/IGlobalResponseObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/logitech/connect/ConnectClient;->addGlobalResponseObserver(Lcom/logitech/connect/IGlobalResponseObserver;)V

    .line 82
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity$1;->this$0:Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;

    #calls: Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->displayLoadingIfNeeded()V
    invoke-static {v0}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->access$200(Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;)V

    .line 83
    invoke-static {}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->access$300()Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity$1;->this$0:Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->addObserver(Lcom/logitech/harmonylink/harmony/IDomObserver;)V

    .line 84
    return-void
.end method
