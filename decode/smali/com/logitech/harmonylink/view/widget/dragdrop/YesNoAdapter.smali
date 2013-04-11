.class public Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter;
.super Landroid/widget/BaseAdapter;
.source "YesNoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter$ListItem;
    }
.end annotation


# static fields
.field public static final ITEM_NO:I = 0x1

.field public static final ITEM_YES:I


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter$ListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 7
    .parameter "launcher"

    .prologue
    const/4 v4, -0x1

    .line 79
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter;->mItems:Ljava/util/ArrayList;

    .line 81
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 84
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 87
    .local v2, res:Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter$ListItem;

    const-string v3, "Yes"

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter$ListItem;-><init>(Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter;Landroid/content/res/Resources;Ljava/lang/String;II)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v6, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter$ListItem;

    const-string v3, "No"

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter$ListItem;-><init>(Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter;Landroid/content/res/Resources;Ljava/lang/String;II)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter;->notifyDataSetChanged()V

    .line 95
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 125
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemTag(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter$ListItem;

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter$ListItem;->getAction()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 98
    invoke-virtual {p0, p1}, Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter$ListItem;

    .line 100
    .local v1, item:Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter$ListItem;
    if-nez p2, :cond_0

    .line 101
    iget-object v3, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030003

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 104
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    .line 105
    .local v2, textView:Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 106
    iget-object v3, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter$ListItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v3, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 109
    return-object p2
.end method
