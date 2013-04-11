.class Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$1;
.super Ljava/lang/Object;
.source "OneTouchActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$1;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 135
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 139
    packed-switch p2, :pswitch_data_0

    .line 150
    :goto_0
    return-void

    .line 142
    :pswitch_0
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$1;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$100(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_0

    .line 146
    :pswitch_1
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$1;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$100(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
