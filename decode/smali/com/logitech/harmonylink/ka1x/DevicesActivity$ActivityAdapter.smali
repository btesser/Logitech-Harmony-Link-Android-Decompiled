.class public Lcom/logitech/harmonylink/ka1x/DevicesActivity$ActivityAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DevicesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/ka1x/DevicesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActivityAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/logitech/harmonylink/ka1x/DevicesActivity;


# direct methods
.method public constructor <init>(Lcom/logitech/harmonylink/ka1x/DevicesActivity;Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter "objects"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/logitech/harmonylink/ka1x/DevicesActivity$ActivityAdapter;->this$0:Lcom/logitech/harmonylink/ka1x/DevicesActivity;

    .line 126
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 127
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/ka1x/DevicesActivity$ActivityAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 129
    invoke-virtual {p0}, Lcom/logitech/harmonylink/ka1x/DevicesActivity$ActivityAdapter;->notifyDataSetChanged()V

    .line 130
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 134
    if-nez p2, :cond_0

    .line 135
    iget-object v3, p0, Lcom/logitech/harmonylink/ka1x/DevicesActivity$ActivityAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030001

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 137
    :cond_0
    const v3, 0x7f07000f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 139
    .local v2, textView:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/logitech/harmonylink/ka1x/DevicesActivity$ActivityAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    .line 140
    .local v0, activity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    const v3, 0x7f07000e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 142
    .local v1, imageView:Landroid/widget/ImageView;
    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getIconResourceIDbyActivityType(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    return-object p2
.end method
