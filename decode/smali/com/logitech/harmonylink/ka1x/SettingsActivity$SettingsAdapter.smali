.class public Lcom/logitech/harmonylink/ka1x/SettingsActivity$SettingsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/ka1x/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/logitech/harmonylink/ka1x/SettingsActivity;


# direct methods
.method public constructor <init>(Lcom/logitech/harmonylink/ka1x/SettingsActivity;Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter "objects"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/logitech/harmonylink/ka1x/SettingsActivity$SettingsAdapter;->this$0:Lcom/logitech/harmonylink/ka1x/SettingsActivity;

    .line 78
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 79
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/ka1x/SettingsActivity$SettingsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 81
    invoke-virtual {p0}, Lcom/logitech/harmonylink/ka1x/SettingsActivity$SettingsAdapter;->notifyDataSetChanged()V

    .line 82
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 86
    if-nez p2, :cond_0

    .line 87
    iget-object v2, p0, Lcom/logitech/harmonylink/ka1x/SettingsActivity$SettingsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030053

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 90
    :cond_0
    const v2, 0x7f07000f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 92
    .local v1, textView:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/logitech/harmonylink/ka1x/SettingsActivity$SettingsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    .local v0, settingItem:Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/logitech/harmonylink/ka1x/SettingsActivity$SettingsAdapter;->this$0:Lcom/logitech/harmonylink/ka1x/SettingsActivity;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/ka1x/SettingsActivity;->isPairedWithKa()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x2

    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 102
    return-object p2

    .line 96
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    const/4 v1, 0x1

    .line 108
    if-eqz p1, :cond_0

    if-ne p1, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/SettingsActivity$SettingsAdapter;->this$0:Lcom/logitech/harmonylink/ka1x/SettingsActivity;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/ka1x/SettingsActivity;->isPairedWithKa()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
