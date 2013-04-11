.class Lcom/logitech/harmonylink/context/OneTouchActivity$4;
.super Ljava/lang/Object;
.source "OneTouchActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/context/OneTouchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/OneTouchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$4;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 365
    iget-object v0, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$4;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    check-cast p2, Lcom/logitech/harmonylink/service/ContentCompareService$IGetAndCompareItems;

    .end local p2
    #setter for: Lcom/logitech/harmonylink/context/OneTouchActivity;->mServiceInterface:Lcom/logitech/harmonylink/service/ContentCompareService$IGetAndCompareItems;
    invoke-static {v0, p2}, Lcom/logitech/harmonylink/context/OneTouchActivity;->access$702(Lcom/logitech/harmonylink/context/OneTouchActivity;Lcom/logitech/harmonylink/service/ContentCompareService$IGetAndCompareItems;)Lcom/logitech/harmonylink/service/ContentCompareService$IGetAndCompareItems;

    .line 366
    iget-object v0, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$4;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/context/OneTouchActivity;->mServiceInterface:Lcom/logitech/harmonylink/service/ContentCompareService$IGetAndCompareItems;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/OneTouchActivity;->access$700(Lcom/logitech/harmonylink/context/OneTouchActivity;)Lcom/logitech/harmonylink/service/ContentCompareService$IGetAndCompareItems;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$4;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;
    invoke-static {v1}, Lcom/logitech/harmonylink/context/OneTouchActivity;->access$800(Lcom/logitech/harmonylink/context/OneTouchActivity;)Lcom/logitech/harmonylink/harmony/OneTouchManager;

    move-result-object v1

    iget-object v2, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$4;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    invoke-virtual {v2}, Lcom/logitech/harmonylink/context/OneTouchActivity;->getApplication()Landroid/app/Application;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {p0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getConnectClient()Lcom/logitech/connect/ConnectClient;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/logitech/harmonylink/service/ContentCompareService$IGetAndCompareItems;->getAndCompareItems(Lcom/logitech/harmonylink/harmony/OneTouchManager;Lcom/logitech/connect/ConnectClient;)V

    .line 369
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 372
    iget-object v0, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$4;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    const/4 v1, 0x0

    #setter for: Lcom/logitech/harmonylink/context/OneTouchActivity;->mServiceInterface:Lcom/logitech/harmonylink/service/ContentCompareService$IGetAndCompareItems;
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/context/OneTouchActivity;->access$702(Lcom/logitech/harmonylink/context/OneTouchActivity;Lcom/logitech/harmonylink/service/ContentCompareService$IGetAndCompareItems;)Lcom/logitech/harmonylink/service/ContentCompareService$IGetAndCompareItems;

    .line 373
    return-void
.end method
