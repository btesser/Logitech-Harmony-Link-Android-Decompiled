.class public Lcom/logitech/harmonylink/olive/ui/SettingsActivity$SettingsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/olive/ui/SettingsActivity;
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
.field mArrowView:Landroid/widget/TextView;

.field private final mInflater:Landroid/view/LayoutInflater;

.field mStatus:Landroid/widget/TextView;

.field private mStringArray:[Ljava/lang/String;

.field final synthetic this$0:Lcom/logitech/harmonylink/olive/ui/SettingsActivity;


# direct methods
.method public constructor <init>(Lcom/logitech/harmonylink/olive/ui/SettingsActivity;Landroid/content/Context;ILjava/util/List;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter "objects"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/SettingsActivity$SettingsAdapter;->this$0:Lcom/logitech/harmonylink/olive/ui/SettingsActivity;

    .line 98
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 100
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/olive/ui/SettingsActivity$SettingsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 101
    invoke-virtual {p1}, Lcom/logitech/harmonylink/olive/ui/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/olive/ui/SettingsActivity$SettingsAdapter;->mStringArray:[Ljava/lang/String;

    .line 103
    invoke-virtual {p0}, Lcom/logitech/harmonylink/olive/ui/SettingsActivity$SettingsAdapter;->notifyDataSetChanged()V

    .line 104
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 108
    if-nez p2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/SettingsActivity$SettingsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030053

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 112
    :cond_0
    const v2, 0x7f07000f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 113
    .local v1, textView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/SettingsActivity$SettingsAdapter;->mStringArray:[Ljava/lang/String;

    aget-object v0, v2, p1

    .line 116
    .local v0, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/SettingsActivity$SettingsAdapter;->mStringArray:[Ljava/lang/String;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/SettingsActivity$SettingsAdapter;->this$0:Lcom/logitech/harmonylink/olive/ui/SettingsActivity;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/olive/ui/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600b3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    const v2, 0x7f0700f0

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/logitech/harmonylink/olive/ui/SettingsActivity$SettingsAdapter;->mArrowView:Landroid/widget/TextView;

    .line 118
    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/SettingsActivity$SettingsAdapter;->mArrowView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/SettingsActivity$SettingsAdapter;->this$0:Lcom/logitech/harmonylink/olive/ui/SettingsActivity;

    const v2, 0x7f0700ef

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v3, Lcom/logitech/harmonylink/olive/ui/SettingsActivity;->mCheckBox:Landroid/widget/CheckBox;

    .line 121
    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/SettingsActivity$SettingsAdapter;->this$0:Lcom/logitech/harmonylink/olive/ui/SettingsActivity;

    iget-object v2, v2, Lcom/logitech/harmonylink/olive/ui/SettingsActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 122
    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/SettingsActivity$SettingsAdapter;->this$0:Lcom/logitech/harmonylink/olive/ui/SettingsActivity;

    iget-object v2, v2, Lcom/logitech/harmonylink/olive/ui/SettingsActivity;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/SettingsActivity$SettingsAdapter;->this$0:Lcom/logitech/harmonylink/olive/ui/SettingsActivity;

    iget-object v3, v3, Lcom/logitech/harmonylink/olive/ui/SettingsActivity;->mPrefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    const-string v4, "autolockstate"

    invoke-virtual {v3, v4, v5}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getBooleanWithName(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 124
    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/SettingsActivity$SettingsAdapter;->this$0:Lcom/logitech/harmonylink/olive/ui/SettingsActivity;

    iget-object v2, v2, Lcom/logitech/harmonylink/olive/ui/SettingsActivity;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v3, Lcom/logitech/harmonylink/olive/ui/SettingsActivity$OnAutoLockCheckedListener;

    iget-object v4, p0, Lcom/logitech/harmonylink/olive/ui/SettingsActivity$SettingsAdapter;->this$0:Lcom/logitech/harmonylink/olive/ui/SettingsActivity;

    invoke-direct {v3, v4}, Lcom/logitech/harmonylink/olive/ui/SettingsActivity$OnAutoLockCheckedListener;-><init>(Lcom/logitech/harmonylink/olive/ui/SettingsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 127
    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 130
    return-object p2
.end method
