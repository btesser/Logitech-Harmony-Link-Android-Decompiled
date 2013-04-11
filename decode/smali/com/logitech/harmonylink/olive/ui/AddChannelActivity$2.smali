.class Lcom/logitech/harmonylink/olive/ui/AddChannelActivity$2;
.super Ljava/lang/Object;
.source "AddChannelActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity$2;->this$0:Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 158
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity$2;->this$0:Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;

    #setter for: Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->isEnteredChannelNumber:Z
    invoke-static {v0, v2}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->access$102(Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;Z)Z

    .line 164
    :goto_0
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity$2;->this$0:Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->isEnteredChannelName:Z
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->access$000(Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity$2;->this$0:Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->isEnteredChannelNumber:Z
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->access$100(Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity$2;->this$0:Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;

    #calls: Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->enableButtons(Z)V
    invoke-static {v0, v2}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->access$200(Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;Z)V

    .line 170
    :goto_1
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity$2;->this$0:Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;

    #setter for: Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->isEnteredChannelNumber:Z
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->access$102(Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;Z)Z

    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity$2;->this$0:Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;

    #calls: Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->enableButtons(Z)V
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->access$200(Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;Z)V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 176
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v2, 0x0

    .line 180
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_2

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity$2;->this$0:Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mEditChannelNumber:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->access$300(Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0
.end method
