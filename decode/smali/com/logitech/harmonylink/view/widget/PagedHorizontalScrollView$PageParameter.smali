.class Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView$PageParameter;
.super Ljava/lang/Object;
.source "PagedHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PageParameter"
.end annotation


# instance fields
.field private mPageSize:I

.field private mPageView:Landroid/view/View;


# direct methods
.method public constructor <init>(ILandroid/view/View;)V
    .locals 0
    .parameter "pageSize"
    .parameter "pageView"

    .prologue
    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 541
    iput p1, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView$PageParameter;->mPageSize:I

    .line 542
    iput-object p2, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView$PageParameter;->mPageView:Landroid/view/View;

    .line 543
    return-void
.end method


# virtual methods
.method public getPageSize()I
    .locals 1

    .prologue
    .line 546
    iget v0, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView$PageParameter;->mPageSize:I

    return v0
.end method

.method public getPageView()Landroid/view/View;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView$PageParameter;->mPageView:Landroid/view/View;

    return-object v0
.end method
