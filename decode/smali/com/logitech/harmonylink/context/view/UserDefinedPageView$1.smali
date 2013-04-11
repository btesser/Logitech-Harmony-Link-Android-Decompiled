.class Lcom/logitech/harmonylink/context/view/UserDefinedPageView$1;
.super Ljava/lang/Object;
.source "UserDefinedPageView.java"

# interfaces
.implements Lcom/logitech/harmonylink/view/widget/dragdrop/DragController$DragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->doFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

.field final synthetic val$deleteZone:Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/view/UserDefinedPageView;Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$1;->this$0:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    iput-object p2, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$1;->val$deleteZone:Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragEnd()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$1;->val$deleteZone:Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->setEnabled(Z)V

    .line 188
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$1;->val$deleteZone:Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->setTextColor(I)V

    .line 189
    return-void
.end method

.method public onDragStart(Landroid/view/View;Lcom/logitech/harmonylink/view/widget/dragdrop/DragSource;Ljava/lang/Object;I)V
    .locals 2
    .parameter "v"
    .parameter "source"
    .parameter "info"
    .parameter "dragAction"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$1;->val$deleteZone:Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->setEnabled(Z)V

    .line 182
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$1;->val$deleteZone:Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->setTextColor(I)V

    .line 183
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$1;->val$deleteZone:Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->onBackgroundChanged()V

    .line 184
    return-void
.end method
