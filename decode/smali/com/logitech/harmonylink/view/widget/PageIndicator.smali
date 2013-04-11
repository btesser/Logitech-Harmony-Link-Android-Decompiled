.class public Lcom/logitech/harmonylink/view/widget/PageIndicator;
.super Landroid/widget/LinearLayout;
.source "PageIndicator.java"


# instance fields
.field private mPageCount:I

.field private mPageIndicatorArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPageNumber:I

.field private mPagesIconResourceID:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/PageIndicator;->mPageIndicatorArray:Ljava/util/ArrayList;

    .line 24
    invoke-direct {p0}, Lcom/logitech/harmonylink/view/widget/PageIndicator;->initialize()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/PageIndicator;->mPageIndicatorArray:Ljava/util/ArrayList;

    .line 30
    invoke-direct {p0}, Lcom/logitech/harmonylink/view/widget/PageIndicator;->initialize()V

    .line 31
    return-void
.end method

.method private initialize()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/logitech/harmonylink/view/widget/PageIndicator;->mPageNumber:I

    .line 35
    iput v0, p0, Lcom/logitech/harmonylink/view/widget/PageIndicator;->mPageCount:I

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/PageIndicator;->mPagesIconResourceID:Ljava/lang/Integer;

    .line 39
    return-void
.end method


# virtual methods
.method public hidePage(I)V
    .locals 2
    .parameter "pageNumber"

    .prologue
    .line 73
    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/PageIndicator;->mPageIndicatorArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 74
    .local v0, pageIndicatorIconView:Landroid/view/View;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    return-void
.end method

.method public render(I)V
    .locals 4
    .parameter "pageNumberOld"

    .prologue
    .line 87
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/PageIndicator;->mPageIndicatorArray:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 88
    .local v1, pageIndicatorIconViewOld:Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 90
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/PageIndicator;->mPageIndicatorArray:Ljava/util/ArrayList;

    iget v3, p0, Lcom/logitech/harmonylink/view/widget/PageIndicator;->mPageNumber:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 91
    .local v0, pageIndicatorIconViewNew:Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 92
    return-void
.end method

.method public setPageCount(I)V
    .locals 0
    .parameter "pageCount"

    .prologue
    .line 61
    iput p1, p0, Lcom/logitech/harmonylink/view/widget/PageIndicator;->mPageCount:I

    .line 62
    return-void
.end method

.method public setPageNumber(I)V
    .locals 1
    .parameter "pageNumber"

    .prologue
    .line 65
    iget v0, p0, Lcom/logitech/harmonylink/view/widget/PageIndicator;->mPageNumber:I

    .line 66
    .local v0, pageNumberOld:I
    iput p1, p0, Lcom/logitech/harmonylink/view/widget/PageIndicator;->mPageNumber:I

    .line 68
    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/view/widget/PageIndicator;->render(I)V

    .line 69
    return-void
.end method

.method public setPageParameters(II)V
    .locals 5
    .parameter "pageNumber"
    .parameter "pageCount"

    .prologue
    .line 48
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    iget v2, p0, Lcom/logitech/harmonylink/view/widget/PageIndicator;->mPageCount:I

    sub-int v2, p2, v2

    if-ge v0, v2, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/PageIndicator;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/logitech/harmonylink/view/widget/PageIndicator;->mPagesIconResourceID:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 51
    .local v1, pageIndicatorIconView:Landroid/view/View;
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/PageIndicator;->mPageIndicatorArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/view/widget/PageIndicator;->addView(Landroid/view/View;)V

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    .end local v1           #pageIndicatorIconView:Landroid/view/View;
    :cond_0
    iput p2, p0, Lcom/logitech/harmonylink/view/widget/PageIndicator;->mPageCount:I

    .line 57
    invoke-virtual {p0, p1}, Lcom/logitech/harmonylink/view/widget/PageIndicator;->setPageNumber(I)V

    .line 58
    return-void
.end method

.method public setPagesIconLayout(I)V
    .locals 1
    .parameter "resourceID"

    .prologue
    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/PageIndicator;->mPagesIconResourceID:Ljava/lang/Integer;

    .line 43
    return-void
.end method

.method public showPage(I)V
    .locals 2
    .parameter "pageNumber"

    .prologue
    .line 80
    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/PageIndicator;->mPageIndicatorArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 81
    .local v0, pageIndicatorIconView:Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    return-void
.end method
