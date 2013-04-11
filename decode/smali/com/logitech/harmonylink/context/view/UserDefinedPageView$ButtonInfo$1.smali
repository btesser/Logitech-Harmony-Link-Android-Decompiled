.class Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo$1;
.super Lcom/logitech/harmonylink/util/SimpleTouchListener;
.source "UserDefinedPageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->createView(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 1070
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo$1;->this$0:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;

    invoke-direct {p0}, Lcom/logitech/harmonylink/util/SimpleTouchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionDown(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 1059
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;

    .line 1060
    .local v2, info:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 1061
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1062
    #getter for: Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->mButtonDef:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DraggableButtonDef;
    invoke-static {v2}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->access$200(Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;)Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DraggableButtonDef;

    move-result-object v3

    invoke-virtual {v3}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DraggableButtonDef;->getHashKey()Ljava/lang/String;

    move-result-object v0

    .line 1063
    .local v0, action:Ljava/lang/String;
    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo$1;->this$0:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;

    #getter for: Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->mUserDefinedPageView:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;
    invoke-static {v3}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->access$000(Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;)Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    invoke-static {}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->access$300()Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;->getCommand(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v1

    .line 1064
    .local v1, c:Lcom/logitech/harmonylink/harmony/Command;
    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo$1;->this$0:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;

    #getter for: Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->mDom:Lcom/logitech/harmonylink/harmony/Dom;
    invoke-static {v3}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->access$400(Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;)Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v3

    invoke-virtual {v3, v1, v4}, Lcom/logitech/harmonylink/harmony/Dom;->startSendCommand(Lcom/logitech/harmonylink/harmony/Command;Z)Z

    .line 1065
    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo$1;->this$0:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;

    #getter for: Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->mDom:Lcom/logitech/harmonylink/harmony/Dom;
    invoke-static {v3}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->access$400(Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;)Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;->getInstance(Landroid/view/View;Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;->start()V

    .line 1066
    return v4
.end method

.method public onActionUp(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 1071
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1072
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1073
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo$1;->this$0:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;

    #getter for: Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->mDom:Lcom/logitech/harmonylink/harmony/Dom;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->access$400(Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;)Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;->getInstance(Landroid/view/View;Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;->stop()V

    .line 1074
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo$1;->this$0:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;

    #getter for: Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->mDom:Lcom/logitech/harmonylink/harmony/Dom;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->access$400(Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;)Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/Dom;->sendCancelCommand()Z

    .line 1075
    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo$1;->this$0:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;

    #getter for: Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->mUserDefinedPageView:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->access$000(Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;)Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    move-result-object v0

    #getter for: Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mDesktopLocked:Z
    invoke-static {v0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->access$100(Lcom/logitech/harmonylink/context/view/UserDefinedPageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1044
    invoke-super {p0, p1, p2}, Lcom/logitech/harmonylink/util/SimpleTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1053
    :goto_0
    return v0

    .line 1048
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1053
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1050
    :pswitch_0
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo$1;->this$0:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;

    #getter for: Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->mUserDefinedPageView:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->access$000(Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;)Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->onLongClick(Landroid/view/View;)Z

    goto :goto_1

    .line 1048
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
