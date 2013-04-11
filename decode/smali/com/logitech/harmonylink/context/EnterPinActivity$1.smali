.class Lcom/logitech/harmonylink/context/EnterPinActivity$1;
.super Ljava/lang/Object;
.source "EnterPinActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/EnterPinActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/EnterPinActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/EnterPinActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/logitech/harmonylink/context/EnterPinActivity$1;->this$0:Lcom/logitech/harmonylink/context/EnterPinActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const/4 v3, 0x1

    .line 60
    iget-object v2, p0, Lcom/logitech/harmonylink/context/EnterPinActivity$1;->this$0:Lcom/logitech/harmonylink/context/EnterPinActivity;

    iget-boolean v2, v2, Lcom/logitech/harmonylink/context/EnterPinActivity;->mLockEntry:Z

    if-nez v2, :cond_6

    if-eqz p2, :cond_6

    .line 61
    const/4 v1, 0x1

    .line 62
    .local v1, resetFocus:Z
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 63
    .local v0, id:I
    const v2, 0x7f070069

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/logitech/harmonylink/context/EnterPinActivity$1;->this$0:Lcom/logitech/harmonylink/context/EnterPinActivity;

    #getter for: Lcom/logitech/harmonylink/context/EnterPinActivity;->mEntryFieldIndex:I
    invoke-static {v2}, Lcom/logitech/harmonylink/context/EnterPinActivity;->access$000(Lcom/logitech/harmonylink/context/EnterPinActivity;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 67
    iget-object v2, p0, Lcom/logitech/harmonylink/context/EnterPinActivity$1;->this$0:Lcom/logitech/harmonylink/context/EnterPinActivity;

    const/4 v3, 0x0

    #setter for: Lcom/logitech/harmonylink/context/EnterPinActivity;->mEntryFieldIndex:I
    invoke-static {v2, v3}, Lcom/logitech/harmonylink/context/EnterPinActivity;->access$002(Lcom/logitech/harmonylink/context/EnterPinActivity;I)I

    .line 68
    const/4 v1, 0x1

    .line 92
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 93
    iget-object v2, p0, Lcom/logitech/harmonylink/context/EnterPinActivity$1;->this$0:Lcom/logitech/harmonylink/context/EnterPinActivity;

    #getter for: Lcom/logitech/harmonylink/context/EnterPinActivity;->mEntryFields:[Landroid/widget/EditText;
    invoke-static {v2}, Lcom/logitech/harmonylink/context/EnterPinActivity;->access$100(Lcom/logitech/harmonylink/context/EnterPinActivity;)[Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcom/logitech/harmonylink/context/EnterPinActivity$1;->this$0:Lcom/logitech/harmonylink/context/EnterPinActivity;

    #getter for: Lcom/logitech/harmonylink/context/EnterPinActivity;->mEntryFieldIndex:I
    invoke-static {v3}, Lcom/logitech/harmonylink/context/EnterPinActivity;->access$000(Lcom/logitech/harmonylink/context/EnterPinActivity;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 99
    .end local v0           #id:I
    .end local v1           #resetFocus:Z
    :cond_1
    :goto_1
    return-void

    .line 69
    .restart local v0       #id:I
    .restart local v1       #resetFocus:Z
    :cond_2
    const v2, 0x7f07006a

    if-ne v0, v2, :cond_4

    iget-object v2, p0, Lcom/logitech/harmonylink/context/EnterPinActivity$1;->this$0:Lcom/logitech/harmonylink/context/EnterPinActivity;

    #getter for: Lcom/logitech/harmonylink/context/EnterPinActivity;->mEntryFieldIndex:I
    invoke-static {v2}, Lcom/logitech/harmonylink/context/EnterPinActivity;->access$000(Lcom/logitech/harmonylink/context/EnterPinActivity;)I

    move-result v2

    if-eq v2, v3, :cond_4

    .line 72
    iget-object v2, p0, Lcom/logitech/harmonylink/context/EnterPinActivity$1;->this$0:Lcom/logitech/harmonylink/context/EnterPinActivity;

    #getter for: Lcom/logitech/harmonylink/context/EnterPinActivity;->mEntryFieldIndex:I
    invoke-static {v2}, Lcom/logitech/harmonylink/context/EnterPinActivity;->access$000(Lcom/logitech/harmonylink/context/EnterPinActivity;)I

    move-result v2

    if-le v2, v3, :cond_3

    .line 74
    iget-object v2, p0, Lcom/logitech/harmonylink/context/EnterPinActivity$1;->this$0:Lcom/logitech/harmonylink/context/EnterPinActivity;

    #setter for: Lcom/logitech/harmonylink/context/EnterPinActivity;->mEntryFieldIndex:I
    invoke-static {v2, v3}, Lcom/logitech/harmonylink/context/EnterPinActivity;->access$002(Lcom/logitech/harmonylink/context/EnterPinActivity;I)I

    .line 75
    const/4 v1, 0x1

    goto :goto_0

    .line 79
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 81
    :cond_4
    const v2, 0x7f07006b

    if-ne v0, v2, :cond_5

    iget-object v2, p0, Lcom/logitech/harmonylink/context/EnterPinActivity$1;->this$0:Lcom/logitech/harmonylink/context/EnterPinActivity;

    #getter for: Lcom/logitech/harmonylink/context/EnterPinActivity;->mEntryFieldIndex:I
    invoke-static {v2}, Lcom/logitech/harmonylink/context/EnterPinActivity;->access$000(Lcom/logitech/harmonylink/context/EnterPinActivity;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    .line 86
    const/4 v1, 0x1

    goto :goto_0

    .line 87
    :cond_5
    const v2, 0x7f07006c

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/logitech/harmonylink/context/EnterPinActivity$1;->this$0:Lcom/logitech/harmonylink/context/EnterPinActivity;

    #getter for: Lcom/logitech/harmonylink/context/EnterPinActivity;->mEntryFieldIndex:I
    invoke-static {v2}, Lcom/logitech/harmonylink/context/EnterPinActivity;->access$000(Lcom/logitech/harmonylink/context/EnterPinActivity;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 89
    const/4 v1, 0x1

    goto :goto_0

    .line 95
    .end local v0           #id:I
    .end local v1           #resetFocus:Z
    :cond_6
    if-eqz p2, :cond_1

    .line 97
    iget-object v2, p0, Lcom/logitech/harmonylink/context/EnterPinActivity$1;->this$0:Lcom/logitech/harmonylink/context/EnterPinActivity;

    #getter for: Lcom/logitech/harmonylink/context/EnterPinActivity;->mEntryFields:[Landroid/widget/EditText;
    invoke-static {v2}, Lcom/logitech/harmonylink/context/EnterPinActivity;->access$100(Lcom/logitech/harmonylink/context/EnterPinActivity;)[Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcom/logitech/harmonylink/context/EnterPinActivity$1;->this$0:Lcom/logitech/harmonylink/context/EnterPinActivity;

    #getter for: Lcom/logitech/harmonylink/context/EnterPinActivity;->mEntryFieldIndex:I
    invoke-static {v3}, Lcom/logitech/harmonylink/context/EnterPinActivity;->access$000(Lcom/logitech/harmonylink/context/EnterPinActivity;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1
.end method
