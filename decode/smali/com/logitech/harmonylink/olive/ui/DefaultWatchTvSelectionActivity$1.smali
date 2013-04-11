.class Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity$1;
.super Ljava/lang/Object;
.source "DefaultWatchTvSelectionActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity$1;->this$0:Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x1

    .line 186
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity$1;->this$0:Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;

    sub-int v1, p3, v2

    #setter for: Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mSelectedPosition:I
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->access$302(Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;I)I

    .line 187
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity$1;->this$0:Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;

    #setter for: Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mIsUserExplicitChange:Z
    invoke-static {v0, v2}, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->access$202(Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;Z)Z

    .line 188
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity$1;->this$0:Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;

    #calls: Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->notifyDataChange()V
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->access$600(Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;)V

    .line 189
    return-void
.end method
