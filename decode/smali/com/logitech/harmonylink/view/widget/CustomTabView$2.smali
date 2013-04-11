.class Lcom/logitech/harmonylink/view/widget/CustomTabView$2;
.super Ljava/lang/Object;
.source "CustomTabView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/view/widget/CustomTabView;->addTab(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/view/widget/CustomTabView;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/view/widget/CustomTabView;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/logitech/harmonylink/view/widget/CustomTabView$2;->this$0:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 69
    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/CustomTabView$2;->this$0:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomTabView;->mTabIndicatorArray:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/logitech/harmonylink/view/widget/CustomTabView;->access$000(Lcom/logitech/harmonylink/view/widget/CustomTabView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 70
    .local v0, tabIndex:I
    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/CustomTabView$2;->this$0:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    invoke-virtual {v1, v0}, Lcom/logitech/harmonylink/view/widget/CustomTabView;->setCurrentTab(I)V

    .line 71
    return-void
.end method
