.class Lcom/logitech/harmonylink/context/OneTouchActivity$1;
.super Ljava/lang/Object;
.source "OneTouchActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/OneTouchActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 146
    iput-object p1, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$1;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

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
    .line 144
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    const/4 v1, 0x1

    .line 148
    packed-switch p2, :pswitch_data_0

    .line 162
    :goto_0
    return-void

    .line 150
    :pswitch_0
    iget-object v0, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$1;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/OneTouchActivity;->access$100(Lcom/logitech/harmonylink/context/OneTouchActivity;)Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_0

    .line 154
    :pswitch_1
    iget-object v0, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$1;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/OneTouchActivity;->access$100(Lcom/logitech/harmonylink/context/OneTouchActivity;)Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_0

    .line 158
    :pswitch_2
    iget-object v0, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$1;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/OneTouchActivity;->access$100(Lcom/logitech/harmonylink/context/OneTouchActivity;)Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
