.class public Lcom/logitech/harmonylink/context/SettingsActivity$SettingsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/context/SettingsActivity;
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

.field private mIsPaired:Z

.field private mStringArray:[Ljava/lang/String;

.field final synthetic this$0:Lcom/logitech/harmonylink/context/SettingsActivity;


# direct methods
.method public constructor <init>(Lcom/logitech/harmonylink/context/SettingsActivity;Landroid/content/Context;ILjava/util/List;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter "objects"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/logitech/harmonylink/context/SettingsActivity$SettingsAdapter;->this$0:Lcom/logitech/harmonylink/context/SettingsActivity;

    .line 90
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 92
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/SettingsActivity$SettingsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 93
    invoke-virtual {p1}, Lcom/logitech/harmonylink/context/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/SettingsActivity$SettingsAdapter;->mStringArray:[Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/SettingsActivity$SettingsAdapter;->notifyDataSetChanged()V

    .line 96
    return-void
.end method


# virtual methods
.method public fetchTypefaceStyle(Ljava/lang/String;)I
    .locals 3
    .parameter "text"

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 122
    .local v0, typeface:I
    iget-object v1, p0, Lcom/logitech/harmonylink/context/SettingsActivity$SettingsAdapter;->this$0:Lcom/logitech/harmonylink/context/SettingsActivity;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/context/SettingsActivity;->isPairedWithKa()Z

    move-result v1

    iput-boolean v1, p0, Lcom/logitech/harmonylink/context/SettingsActivity$SettingsAdapter;->mIsPaired:Z

    .line 123
    iget-boolean v1, p0, Lcom/logitech/harmonylink/context/SettingsActivity$SettingsAdapter;->mIsPaired:Z

    if-nez v1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/logitech/harmonylink/context/SettingsActivity$SettingsAdapter;->mStringArray:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/logitech/harmonylink/context/SettingsActivity$SettingsAdapter;->mStringArray:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/logitech/harmonylink/context/SettingsActivity$SettingsAdapter;->mStringArray:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/logitech/harmonylink/context/SettingsActivity$SettingsAdapter;->mStringArray:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/logitech/harmonylink/context/SettingsActivity$SettingsAdapter;->mStringArray:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    :cond_0
    const/4 v0, 0x2

    .line 130
    :cond_1
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 100
    if-nez p2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/logitech/harmonylink/context/SettingsActivity$SettingsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030053

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 104
    :cond_0
    const v2, 0x7f07000f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 105
    .local v1, textView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/logitech/harmonylink/context/SettingsActivity$SettingsAdapter;->mStringArray:[Ljava/lang/String;

    aget-object v0, v2, p1

    .line 107
    .local v0, text:Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/context/SettingsActivity$SettingsAdapter;->fetchTypefaceStyle(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 110
    return-object p2
.end method
