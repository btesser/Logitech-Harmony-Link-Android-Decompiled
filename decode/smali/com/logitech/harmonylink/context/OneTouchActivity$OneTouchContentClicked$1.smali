.class Lcom/logitech/harmonylink/context/OneTouchActivity$OneTouchContentClicked$1;
.super Ljava/lang/Object;
.source "OneTouchActivity.java"

# interfaces
.implements Lcom/logitech/connect/client/transport/IResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/OneTouchActivity$OneTouchContentClicked;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/logitech/harmonylink/context/OneTouchActivity$OneTouchContentClicked;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/OneTouchActivity$OneTouchContentClicked;ILandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 599
    iput-object p1, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$OneTouchContentClicked$1;->this$1:Lcom/logitech/harmonylink/context/OneTouchActivity$OneTouchContentClicked;

    iput p2, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$OneTouchContentClicked$1;->val$position:I

    iput-object p3, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$OneTouchContentClicked$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "errorCode"
    .parameter "errorMessage"

    .prologue
    .line 602
    return-void
.end method

.method public onResponseReceived(Lcom/logitech/connect/client/transport/IOpenApiRequest;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 579
    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getFailed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 580
    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "500"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$OneTouchContentClicked$1;->this$1:Lcom/logitech/harmonylink/context/OneTouchActivity$OneTouchContentClicked;

    iget-object v0, v0, Lcom/logitech/harmonylink/context/OneTouchActivity$OneTouchContentClicked;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    iget v1, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$OneTouchContentClicked$1;->val$position:I

    #calls: Lcom/logitech/harmonylink/context/OneTouchActivity;->deleteOneTouchContent(I)V
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/context/OneTouchActivity;->access$900(Lcom/logitech/harmonylink/context/OneTouchActivity;I)V

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 591
    :cond_1
    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$OneTouchContentClicked$1;->this$1:Lcom/logitech/harmonylink/context/OneTouchActivity$OneTouchContentClicked;

    iget-object v0, v0, Lcom/logitech/harmonylink/context/OneTouchActivity$OneTouchContentClicked;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    iget-object v1, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$OneTouchContentClicked$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/context/OneTouchActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
