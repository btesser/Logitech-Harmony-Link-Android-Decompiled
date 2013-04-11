.class public Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DeviceCommandsAdapter;
.super Ljava/util/ArrayList;
.source "UserDefinedPageView.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/context/view/UserDefinedPageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceCommandsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/logitech/harmonylink/harmony/Command;",
        ">;",
        "Landroid/widget/ListAdapter;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mTextViewResourceId:I

.field private mUserDefinedPageView:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;


# direct methods
.method public constructor <init>(Lcom/logitech/harmonylink/context/view/UserDefinedPageView;ILjava/util/ArrayList;)V
    .locals 1
    .parameter "userDefinedPageView"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/logitech/harmonylink/context/view/UserDefinedPageView;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/harmony/Command;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 879
    .local p3, commanArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/harmonylink/harmony/Command;>;"
    invoke-direct {p0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 881
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DeviceCommandsAdapter;->mUserDefinedPageView:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    .line 882
    iput p2, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DeviceCommandsAdapter;->mTextViewResourceId:I

    .line 883
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DeviceCommandsAdapter;->mUserDefinedPageView:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DeviceCommandsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 884
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 911
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 923
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DeviceCommandsAdapter;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/logitech/harmonylink/harmony/Command;
    .locals 0
    .parameter "position"

    .prologue
    .line 928
    invoke-virtual {p0, p1}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DeviceCommandsAdapter;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/logitech/harmonylink/harmony/Command;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 872
    invoke-virtual {p0, p1}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DeviceCommandsAdapter;->getItem(I)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 933
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 938
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 887
    if-nez p2, :cond_0

    .line 888
    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DeviceCommandsAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v4, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DeviceCommandsAdapter;->mTextViewResourceId:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 890
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    .line 891
    .local v2, textView:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DeviceCommandsAdapter;->getItem(I)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v1

    .line 893
    .local v1, command:Lcom/logitech/harmonylink/harmony/Command;
    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/Command;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 895
    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DeviceCommandsAdapter;->mUserDefinedPageView:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->getModel()Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;

    move-result-object v3

    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/Command;->getHashKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 896
    const/high16 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 897
    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 904
    :goto_0
    invoke-virtual {v2}, Landroid/widget/TextView;->refreshDrawableState()V

    .line 905
    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    .line 907
    return-object v2

    .line 900
    :cond_1
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 901
    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 943
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 948
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 953
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DeviceCommandsAdapter;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "position"

    .prologue
    .line 915
    invoke-virtual {p0, p1}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DeviceCommandsAdapter;->getItem(I)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v0

    .line 917
    .local v0, command:Lcom/logitech/harmonylink/harmony/Command;
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DeviceCommandsAdapter;->mUserDefinedPageView:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->getModel()Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;

    move-result-object v1

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/Command;->getHashKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 959
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 964
    return-void
.end method
