.class public Lcom/logitech/harmonylink/context/DevicesActivity$DevicesAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DevicesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/context/DevicesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DevicesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/logitech/harmonylink/harmony/Device;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private mItemResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter "itemResourceId"
    .parameter "objects"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 110
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/DevicesActivity$DevicesAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 111
    iput p2, p0, Lcom/logitech/harmonylink/context/DevicesActivity$DevicesAdapter;->mItemResourceId:I

    .line 112
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/DevicesActivity$DevicesAdapter;->notifyDataSetChanged()V

    .line 113
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 117
    if-nez p2, :cond_0

    .line 118
    iget-object v4, p0, Lcom/logitech/harmonylink/context/DevicesActivity$DevicesAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/logitech/harmonylink/context/DevicesActivity$DevicesAdapter;->mItemResourceId:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 122
    :cond_0
    invoke-virtual {p0, p1}, Lcom/logitech/harmonylink/context/DevicesActivity$DevicesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/harmony/Device;

    .line 124
    .local v0, device:Lcom/logitech/harmonylink/harmony/Device;
    const v4, 0x7f07000e

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 126
    .local v1, imageView:Landroid/widget/ImageView;
    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/logitech/harmonylink/harmony/Device;->getIconResourceIDbyDeviceType(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    const v4, 0x7f07000f

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 130
    .local v3, textView:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/Device;->getDeviceTypeDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    const v4, 0x7f070010

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 135
    .local v2, subtextView:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/Device;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    return-object p2
.end method
