.class Lcom/logitech/harmonylink/harmony/Dom$15;
.super Ljava/lang/Object;
.source "Dom.java"

# interfaces
.implements Lcom/logitech/connect/client/transport/IResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/harmony/Dom;->startLogitechActivity(Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/harmony/Dom;

.field final synthetic val$activity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/harmony/Dom;Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 802
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/Dom$15;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    iput-object p2, p0, Lcom/logitech/harmonylink/harmony/Dom$15;->val$activity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "id"
    .parameter "errorCode"
    .parameter "errorMessage"

    .prologue
    const/4 v2, 0x0

    .line 791
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom$15;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    const/4 v1, 0x0

    #setter for: Lcom/logitech/harmonylink/harmony/Dom;->mStartActivityRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->access$1102(Lcom/logitech/harmonylink/harmony/Dom;Lcom/logitech/connect/client/transport/IOpenApiRequest;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 792
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom$15;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    #getter for: Lcom/logitech/harmonylink/harmony/Dom;->mActivityStartObserver:Lcom/logitech/harmonylink/harmony/IActivityStartObserver;
    invoke-static {v0}, Lcom/logitech/harmonylink/harmony/Dom;->access$1200(Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/harmony/IActivityStartObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom$15;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    #getter for: Lcom/logitech/harmonylink/harmony/Dom;->mActivityStartObserver:Lcom/logitech/harmonylink/harmony/IActivityStartObserver;
    invoke-static {v0}, Lcom/logitech/harmonylink/harmony/Dom;->access$1200(Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/harmony/IActivityStartObserver;

    move-result-object v0

    const/16 v1, 0x64

    invoke-interface {v0, v2, v1, v2}, Lcom/logitech/harmonylink/harmony/IActivityStartObserver;->onActivityStartEvent(ZIZ)V

    .line 796
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom$15;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    #getter for: Lcom/logitech/harmonylink/harmony/Dom;->mHasPowerOffStarted:Z
    invoke-static {v0}, Lcom/logitech/harmonylink/harmony/Dom;->access$1300(Lcom/logitech/harmonylink/harmony/Dom;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 797
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom$15;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    #setter for: Lcom/logitech/harmonylink/harmony/Dom;->mHasPowerOffStarted:Z
    invoke-static {v0, v2}, Lcom/logitech/harmonylink/harmony/Dom;->access$1302(Lcom/logitech/harmonylink/harmony/Dom;Z)Z

    .line 798
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom$15;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    const/4 v1, 0x1

    #setter for: Lcom/logitech/harmonylink/harmony/Dom;->mHasPowerOffReturned:Z
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->access$1402(Lcom/logitech/harmonylink/harmony/Dom;Z)Z

    .line 800
    :cond_1
    return-void
.end method

.method public onResponseReceived(Lcom/logitech/connect/client/transport/IOpenApiRequest;)V
    .locals 6
    .parameter "response"

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 803
    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getCompleted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 804
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom$15;->val$activity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    if-nez v0, :cond_2

    .line 805
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom$15;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->setCurrentActivity(Ljava/lang/String;)V

    .line 810
    :goto_0
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom$15;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    #setter for: Lcom/logitech/harmonylink/harmony/Dom;->mStartActivityRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;
    invoke-static {v0, v4}, Lcom/logitech/harmonylink/harmony/Dom;->access$1102(Lcom/logitech/harmonylink/harmony/Dom;Lcom/logitech/connect/client/transport/IOpenApiRequest;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 811
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom$15;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    #getter for: Lcom/logitech/harmonylink/harmony/Dom;->mActivityStartObserver:Lcom/logitech/harmonylink/harmony/IActivityStartObserver;
    invoke-static {v0}, Lcom/logitech/harmonylink/harmony/Dom;->access$1200(Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/harmony/IActivityStartObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom$15;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    #getter for: Lcom/logitech/harmonylink/harmony/Dom;->mActivityStartObserver:Lcom/logitech/harmonylink/harmony/IActivityStartObserver;
    invoke-static {v0}, Lcom/logitech/harmonylink/harmony/Dom;->access$1200(Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/harmony/IActivityStartObserver;

    move-result-object v0

    invoke-interface {v0, v2, v5, v3}, Lcom/logitech/harmonylink/harmony/IActivityStartObserver;->onActivityStartEvent(ZIZ)V

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom$15;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    #getter for: Lcom/logitech/harmonylink/harmony/Dom;->mHasPowerOffStarted:Z
    invoke-static {v0}, Lcom/logitech/harmonylink/harmony/Dom;->access$1300(Lcom/logitech/harmonylink/harmony/Dom;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 816
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom$15;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    #setter for: Lcom/logitech/harmonylink/harmony/Dom;->mHasPowerOffStarted:Z
    invoke-static {v0, v2}, Lcom/logitech/harmonylink/harmony/Dom;->access$1302(Lcom/logitech/harmonylink/harmony/Dom;Z)Z

    .line 817
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom$15;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    #setter for: Lcom/logitech/harmonylink/harmony/Dom;->mHasPowerOffReturned:Z
    invoke-static {v0, v3}, Lcom/logitech/harmonylink/harmony/Dom;->access$1402(Lcom/logitech/harmonylink/harmony/Dom;Z)Z

    .line 837
    :cond_1
    :goto_1
    return-void

    .line 807
    :cond_2
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom$15;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    iget-object v1, p0, Lcom/logitech/harmonylink/harmony/Dom$15;->val$activity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->setCurrentActivity(Ljava/lang/String;)V

    goto :goto_0

    .line 819
    :cond_3
    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getContinued()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 821
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom$15;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    #getter for: Lcom/logitech/harmonylink/harmony/Dom;->mActivityStartObserver:Lcom/logitech/harmonylink/harmony/IActivityStartObserver;
    invoke-static {v0}, Lcom/logitech/harmonylink/harmony/Dom;->access$1200(Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/harmony/IActivityStartObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 822
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom$15;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    #getter for: Lcom/logitech/harmonylink/harmony/Dom;->mActivityStartObserver:Lcom/logitech/harmonylink/harmony/IActivityStartObserver;
    invoke-static {v0}, Lcom/logitech/harmonylink/harmony/Dom;->access$1200(Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/harmony/IActivityStartObserver;

    move-result-object v0

    const/16 v1, 0x32

    invoke-interface {v0, v3, v1, v2}, Lcom/logitech/harmonylink/harmony/IActivityStartObserver;->onActivityStartEvent(ZIZ)V

    goto :goto_1

    .line 825
    :cond_4
    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getFailed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 826
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom$15;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    #setter for: Lcom/logitech/harmonylink/harmony/Dom;->mCurrentActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    invoke-static {v0, v4}, Lcom/logitech/harmonylink/harmony/Dom;->access$1502(Lcom/logitech/harmonylink/harmony/Dom;Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;)Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    .line 827
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom$15;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    #setter for: Lcom/logitech/harmonylink/harmony/Dom;->mStartActivityRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;
    invoke-static {v0, v4}, Lcom/logitech/harmonylink/harmony/Dom;->access$1102(Lcom/logitech/harmonylink/harmony/Dom;Lcom/logitech/connect/client/transport/IOpenApiRequest;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 828
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom$15;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    #getter for: Lcom/logitech/harmonylink/harmony/Dom;->mActivityStartObserver:Lcom/logitech/harmonylink/harmony/IActivityStartObserver;
    invoke-static {v0}, Lcom/logitech/harmonylink/harmony/Dom;->access$1200(Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/harmony/IActivityStartObserver;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 829
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom$15;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    #getter for: Lcom/logitech/harmonylink/harmony/Dom;->mActivityStartObserver:Lcom/logitech/harmonylink/harmony/IActivityStartObserver;
    invoke-static {v0}, Lcom/logitech/harmonylink/harmony/Dom;->access$1200(Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/harmony/IActivityStartObserver;

    move-result-object v0

    invoke-interface {v0, v2, v5, v2}, Lcom/logitech/harmonylink/harmony/IActivityStartObserver;->onActivityStartEvent(ZIZ)V

    .line 832
    :cond_5
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom$15;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    #getter for: Lcom/logitech/harmonylink/harmony/Dom;->mHasPowerOffStarted:Z
    invoke-static {v0}, Lcom/logitech/harmonylink/harmony/Dom;->access$1300(Lcom/logitech/harmonylink/harmony/Dom;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 833
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom$15;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    #setter for: Lcom/logitech/harmonylink/harmony/Dom;->mHasPowerOffStarted:Z
    invoke-static {v0, v2}, Lcom/logitech/harmonylink/harmony/Dom;->access$1302(Lcom/logitech/harmonylink/harmony/Dom;Z)Z

    .line 834
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom$15;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    #setter for: Lcom/logitech/harmonylink/harmony/Dom;->mHasPowerOffReturned:Z
    invoke-static {v0, v3}, Lcom/logitech/harmonylink/harmony/Dom;->access$1402(Lcom/logitech/harmonylink/harmony/Dom;Z)Z

    goto :goto_1
.end method
