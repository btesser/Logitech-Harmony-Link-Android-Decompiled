.class public Lcom/logitech/harmonylink/view/widget/CommandsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CommandsAdapter.java"


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
.field private mInflater:Landroid/view/LayoutInflater;

.field private mListItemresourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter "objects"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 22
    iput p2, p0, Lcom/logitech/harmonylink/view/widget/CommandsAdapter;->mListItemresourceId:I

    .line 23
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/CommandsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 24
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 28
    if-nez p2, :cond_0

    .line 30
    iget-object v3, p0, Lcom/logitech/harmonylink/view/widget/CommandsAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v4, p0, Lcom/logitech/harmonylink/view/widget/CommandsAdapter;->mListItemresourceId:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 32
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    .line 34
    .local v2, textView:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/logitech/harmonylink/view/widget/CommandsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/logitech/harmonylink/harmony/Command;

    .line 35
    .local v1, command:Lcom/logitech/harmonylink/harmony/Command;
    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/Command;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    return-object v2
.end method
