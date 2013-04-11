.class Lcom/logitech/harmonylink/context/ManualSyncActivity$2$4;
.super Ljava/lang/Object;
.source "ManualSyncActivity.java"

# interfaces
.implements Lcom/logitech/connect/client/transport/IResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/logitech/harmonylink/context/ManualSyncActivity$2;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/ManualSyncActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2$4;->this$1:Lcom/logitech/harmonylink/context/ManualSyncActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "id"
    .parameter "errorCode"
    .parameter "errorMessage"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2$4;->this$1:Lcom/logitech/harmonylink/context/ManualSyncActivity$2;

    const/4 v1, 0x1

    #setter for: Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->mHasResponded:Z
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->access$002(Lcom/logitech/harmonylink/context/ManualSyncActivity$2;Z)Z

    .line 141
    iget-object v0, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2$4;->this$1:Lcom/logitech/harmonylink/context/ManualSyncActivity$2;

    #getter for: Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->mHeartbeatHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->access$200(Lcom/logitech/harmonylink/context/ManualSyncActivity$2;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2$4;->this$1:Lcom/logitech/harmonylink/context/ManualSyncActivity$2;

    #getter for: Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->mCheckHeartbeat:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->access$300(Lcom/logitech/harmonylink/context/ManualSyncActivity$2;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 143
    iget-object v0, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2$4;->this$1:Lcom/logitech/harmonylink/context/ManualSyncActivity$2;

    #getter for: Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->mHeartbeatHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->access$200(Lcom/logitech/harmonylink/context/ManualSyncActivity$2;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2$4;->this$1:Lcom/logitech/harmonylink/context/ManualSyncActivity$2;

    #getter for: Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->mDisconnectAndDismiss:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->access$500(Lcom/logitech/harmonylink/context/ManualSyncActivity$2;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 145
    iget-object v0, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2$4;->this$1:Lcom/logitech/harmonylink/context/ManualSyncActivity$2;

    iget-object v0, v0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->this$0:Lcom/logitech/harmonylink/context/ManualSyncActivity;

    iget-object v1, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2$4;->this$1:Lcom/logitech/harmonylink/context/ManualSyncActivity$2;

    iget-object v1, v1, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->val$dlgSyncStatus:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2$4;->this$1:Lcom/logitech/harmonylink/context/ManualSyncActivity$2;

    iget-object v2, v2, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->val$dlgStatusText:Landroid/widget/TextView;

    const v3, 0x7f06008a

    #calls: Lcom/logitech/harmonylink/context/ManualSyncActivity;->changeMessage(Landroid/app/Dialog;Landroid/widget/TextView;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/ManualSyncActivity;->access$400(Lcom/logitech/harmonylink/context/ManualSyncActivity;Landroid/app/Dialog;Landroid/widget/TextView;I)V

    .line 147
    return-void
.end method

.method public onResponseReceived(Lcom/logitech/connect/client/transport/IOpenApiRequest;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 151
    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2$4;->this$1:Lcom/logitech/harmonylink/context/ManualSyncActivity$2;

    const/4 v1, 0x1

    #setter for: Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->mHasResponded:Z
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->access$002(Lcom/logitech/harmonylink/context/ManualSyncActivity$2;Z)Z

    .line 153
    iget-object v0, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2$4;->this$1:Lcom/logitech/harmonylink/context/ManualSyncActivity$2;

    #getter for: Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->mHeartbeatHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->access$200(Lcom/logitech/harmonylink/context/ManualSyncActivity$2;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2$4;->this$1:Lcom/logitech/harmonylink/context/ManualSyncActivity$2;

    #getter for: Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->mCheckHeartbeat:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->access$300(Lcom/logitech/harmonylink/context/ManualSyncActivity$2;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 155
    iget-object v0, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2$4;->this$1:Lcom/logitech/harmonylink/context/ManualSyncActivity$2;

    #getter for: Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->mHeartbeatHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->access$200(Lcom/logitech/harmonylink/context/ManualSyncActivity$2;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2$4;->this$1:Lcom/logitech/harmonylink/context/ManualSyncActivity$2;

    #getter for: Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->mDisconnectAndDismiss:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->access$500(Lcom/logitech/harmonylink/context/ManualSyncActivity$2;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 157
    iget-object v0, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2$4;->this$1:Lcom/logitech/harmonylink/context/ManualSyncActivity$2;

    iget-object v0, v0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->this$0:Lcom/logitech/harmonylink/context/ManualSyncActivity;

    iget-object v1, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2$4;->this$1:Lcom/logitech/harmonylink/context/ManualSyncActivity$2;

    iget-object v1, v1, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->val$dlgSyncStatus:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2$4;->this$1:Lcom/logitech/harmonylink/context/ManualSyncActivity$2;

    iget-object v2, v2, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->val$dlgStatusText:Landroid/widget/TextView;

    const v3, 0x7f060089

    #calls: Lcom/logitech/harmonylink/context/ManualSyncActivity;->changeMessage(Landroid/app/Dialog;Landroid/widget/TextView;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/ManualSyncActivity;->access$400(Lcom/logitech/harmonylink/context/ManualSyncActivity;Landroid/app/Dialog;Landroid/widget/TextView;I)V

    .line 159
    iget-object v0, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2$4;->this$1:Lcom/logitech/harmonylink/context/ManualSyncActivity$2;

    #getter for: Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->mHeartbeatHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->access$200(Lcom/logitech/harmonylink/context/ManualSyncActivity$2;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2$4;->this$1:Lcom/logitech/harmonylink/context/ManualSyncActivity$2;

    #getter for: Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->mLaunchOneTouch:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->access$600(Lcom/logitech/harmonylink/context/ManualSyncActivity$2;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 162
    :cond_0
    return-void
.end method
