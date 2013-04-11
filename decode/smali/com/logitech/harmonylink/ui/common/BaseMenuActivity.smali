.class public Lcom/logitech/harmonylink/ui/common/BaseMenuActivity;
.super Lcom/logitech/harmonylink/ui/common/BaseActivity;
.source "BaseMenuActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 14
    invoke-virtual {p0}, Lcom/logitech/harmonylink/ui/common/BaseMenuActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 15
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 16
    const v1, 0x7f07017d

    invoke-interface {p1, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 17
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 22
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 29
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 24
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/logitech/harmonylink/context/HelpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    .local v0, settingsIntent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 26
    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/ui/common/BaseMenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 27
    const/4 v1, 0x1

    goto :goto_0

    .line 22
    :pswitch_data_0
    .packed-switch 0x7f07017a
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method
