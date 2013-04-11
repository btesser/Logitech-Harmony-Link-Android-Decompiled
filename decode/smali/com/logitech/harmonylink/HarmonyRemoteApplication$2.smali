.class Lcom/logitech/harmonylink/HarmonyRemoteApplication$2;
.super Ljava/lang/Object;
.source "HarmonyRemoteApplication.java"

# interfaces
.implements Lcom/logitech/connect/IConnectClientObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/HarmonyRemoteApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$2;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectedChanged(IZI)V
    .locals 2
    .parameter "connectionState"
    .parameter "errorCondition"
    .parameter "errorCode"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$2;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    #getter for: Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectionState:I
    invoke-static {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->access$000(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$2;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    #getter for: Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mErrorState:Z
    invoke-static {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->access$100(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)Z

    move-result v0

    if-eq v0, p2, :cond_1

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$2;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    #setter for: Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectionState:I
    invoke-static {v0, p1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->access$002(Lcom/logitech/harmonylink/HarmonyRemoteApplication;I)I

    .line 172
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$2;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    #setter for: Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mErrorState:Z
    invoke-static {v0, p2}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->access$102(Lcom/logitech/harmonylink/HarmonyRemoteApplication;Z)Z

    .line 173
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$2;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    #setter for: Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mErrorCode:I
    invoke-static {v0, p3}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->access$202(Lcom/logitech/harmonylink/HarmonyRemoteApplication;I)I

    .line 174
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$2;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v0, v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mLastActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$2;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v0, v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mLastActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;

    iget-object v1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$2;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    #getter for: Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectionState:I
    invoke-static {v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->access$000(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onConnectionStateChanged(IZ)V

    .line 178
    :cond_1
    return-void
.end method

.method public onTargetsChanged(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/connect/Target;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/connect/Target;>;"
    return-void
.end method
