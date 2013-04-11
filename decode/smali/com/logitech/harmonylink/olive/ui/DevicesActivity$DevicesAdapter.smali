.class public Lcom/logitech/harmonylink/olive/ui/DevicesActivity$DevicesAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DevicesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/olive/ui/DevicesActivity;
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
    .line 122
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 123
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/olive/ui/DevicesActivity$DevicesAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 124
    iput p2, p0, Lcom/logitech/harmonylink/olive/ui/DevicesActivity$DevicesAdapter;->mItemResourceId:I

    .line 125
    invoke-virtual {p0}, Lcom/logitech/harmonylink/olive/ui/DevicesActivity$DevicesAdapter;->notifyDataSetChanged()V

    .line 126
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 130
    if-nez p2, :cond_0

    .line 131
    iget-object v5, p0, Lcom/logitech/harmonylink/olive/ui/DevicesActivity$DevicesAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v6, p0, Lcom/logitech/harmonylink/olive/ui/DevicesActivity$DevicesAdapter;->mItemResourceId:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 135
    :cond_0
    invoke-virtual {p0, p1}, Lcom/logitech/harmonylink/olive/ui/DevicesActivity$DevicesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/logitech/harmonylink/harmony/Device;

    .line 137
    .local v1, device:Lcom/logitech/harmonylink/harmony/Device;
    const v5, 0x7f07000e

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 139
    .local v2, imageView:Landroid/widget/ImageView;
    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/logitech/harmonylink/harmony/Device;->getIconResourceIDbyDeviceType(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 142
    const v5, 0x7f07000f

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 143
    .local v4, textView:Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/Device;->getDeviceTypeDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    const v5, 0x7f070010

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 148
    .local v3, subtextView:Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/Device;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    const v5, 0x7f07004a

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 152
    .local v0, arrow:Landroid/widget/TextView;
    const-string v5, ">"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    return-object p2
.end method
