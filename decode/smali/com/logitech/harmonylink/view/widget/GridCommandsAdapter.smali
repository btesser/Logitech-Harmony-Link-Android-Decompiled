.class public Lcom/logitech/harmonylink/view/widget/GridCommandsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "GridCommandsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/logitech/harmonylink/harmony/Command;",
        ">;"
    }
.end annotation


# instance fields
.field private mColCount:I

.field private mGridContainer:Landroid/view/ViewGroup;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListItemresourceId:I

.field private mRowCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;IIILjava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter "gridContainer"
    .parameter "rowCount"
    .parameter "colCount"
    .parameter "textViewResourceId"
    .parameter "objects"

    .prologue
    .line 24
    invoke-direct {p0, p1, p5, p6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 25
    iput p5, p0, Lcom/logitech/harmonylink/view/widget/GridCommandsAdapter;->mListItemresourceId:I

    .line 26
    iput-object p2, p0, Lcom/logitech/harmonylink/view/widget/GridCommandsAdapter;->mGridContainer:Landroid/view/ViewGroup;

    .line 27
    iput p3, p0, Lcom/logitech/harmonylink/view/widget/GridCommandsAdapter;->mRowCount:I

    .line 28
    iput p4, p0, Lcom/logitech/harmonylink/view/widget/GridCommandsAdapter;->mColCount:I

    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/GridCommandsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 30
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v7, 0x7f020031

    const/4 v6, 0x1

    .line 34
    if-nez p2, :cond_0

    .line 36
    iget-object v3, p0, Lcom/logitech/harmonylink/view/widget/GridCommandsAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v4, p0, Lcom/logitech/harmonylink/view/widget/GridCommandsAdapter;->mListItemresourceId:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 38
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    .line 40
    .local v2, textView:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/logitech/harmonylink/view/widget/GridCommandsAdapter;->mGridContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/logitech/harmonylink/view/widget/GridCommandsAdapter;->mRowCount:I

    div-int/2addr v3, v4

    iget-object v4, p0, Lcom/logitech/harmonylink/view/widget/GridCommandsAdapter;->mGridContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVerticalFadingEdgeLength()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 44
    invoke-virtual {p0, p1}, Lcom/logitech/harmonylink/view/widget/GridCommandsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/logitech/harmonylink/harmony/Command;

    .line 45
    .local v1, command:Lcom/logitech/harmonylink/harmony/Command;
    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/Command;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    if-nez p1, :cond_2

    .line 48
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 59
    :cond_1
    :goto_0
    return-object v2

    .line 50
    :cond_2
    iget v3, p0, Lcom/logitech/harmonylink/view/widget/GridCommandsAdapter;->mRowCount:I

    sub-int/2addr v3, v6

    iget v4, p0, Lcom/logitech/harmonylink/view/widget/GridCommandsAdapter;->mColCount:I

    mul-int/2addr v3, v4

    if-ne p1, v3, :cond_3

    .line 51
    const v3, 0x7f020030

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 53
    :cond_3
    iget v3, p0, Lcom/logitech/harmonylink/view/widget/GridCommandsAdapter;->mColCount:I

    rem-int v3, p1, v3

    if-nez v3, :cond_4

    .line 54
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 56
    :cond_4
    iget v3, p0, Lcom/logitech/harmonylink/view/widget/GridCommandsAdapter;->mRowCount:I

    sub-int/2addr v3, v6

    iget v4, p0, Lcom/logitech/harmonylink/view/widget/GridCommandsAdapter;->mColCount:I

    mul-int/2addr v3, v4

    if-le p1, v3, :cond_1

    .line 57
    const v3, 0x7f02002d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method
