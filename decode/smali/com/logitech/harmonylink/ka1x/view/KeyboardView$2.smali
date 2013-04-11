.class Lcom/logitech/harmonylink/ka1x/view/KeyboardView$2;
.super Ljava/lang/Object;
.source "KeyboardView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/ka1x/view/KeyboardView;-><init>(Landroid/content/Context;Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;Lcom/logitech/harmonylink/HarmonyRemoteApplication;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/ka1x/view/KeyboardView;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView$2;->this$0:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 11
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v10, 0x3b

    const/16 v9, 0x37

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 108
    sparse-switch p2, :sswitch_data_0

    .line 121
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_3

    .line 122
    invoke-static {}, Lcom/logitech/harmonylink/util/SystemUtil;->getSdkVersionSafely()I

    move-result v3

    .line 123
    .local v3, os:I
    invoke-static {p2}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 124
    const/4 v4, 0x3

    if-le v3, v4, :cond_0

    move v4, v7

    .line 186
    .end local v3           #os:I
    :goto_0
    return v4

    :sswitch_0
    move v4, v8

    .line 113
    goto :goto_0

    .line 117
    :sswitch_1
    iget-object v4, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView$2;->this$0:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;

    iget-object v4, v4, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mActivity:Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;

    invoke-virtual {v4}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->notifyKeyboardViewObservers()V

    move v4, v8

    .line 118
    goto :goto_0

    .line 129
    .restart local v3       #os:I
    :cond_0
    sget-object v4, Lcom/logitech/harmonylink/harmony/Command;->cmdMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/logitech/harmonylink/harmony/Command;

    .line 131
    .local v1, cmd:Lcom/logitech/harmonylink/harmony/Command;
    if-nez v1, :cond_1

    .line 132
    new-instance v1, Lcom/logitech/harmonylink/harmony/Command;

    .end local v1           #cmd:Lcom/logitech/harmonylink/harmony/Command;
    invoke-direct {v1, p2}, Lcom/logitech/harmonylink/harmony/Command;-><init>(I)V

    .line 136
    .restart local v1       #cmd:Lcom/logitech/harmonylink/harmony/Command;
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    .line 137
    .local v0, bitState:I
    iget-object v4, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView$2;->this$0:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;

    sget-boolean v5, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->IS_ALT_PRESSED:Z

    sget-boolean v6, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->IS_FN_PRESSED:Z

    #calls: Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->setBitState(IZZ)I
    invoke-static {v4, v0, v5, v6}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->access$200(Lcom/logitech/harmonylink/ka1x/view/KeyboardView;IZZ)I

    move-result v2

    .line 139
    .local v2, newMetaState:I
    iget-object v4, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView$2;->this$0:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;

    #getter for: Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;
    invoke-static {v4}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->access$300(Lcom/logitech/harmonylink/ka1x/view/KeyboardView;)Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v4

    invoke-virtual {v4, v1, v8, v2}, Lcom/logitech/harmonylink/harmony/Dom;->startSendCommand(Lcom/logitech/harmonylink/harmony/Command;ZI)Z

    .line 141
    packed-switch p2, :pswitch_data_0

    .line 156
    sget-boolean v4, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->IS_ALT_PRESSED:Z

    if-nez v4, :cond_2

    sget-boolean v4, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->IS_FN_PRESSED:Z

    if-nez v4, :cond_2

    .line 158
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    if-eq v4, v7, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    if-eq v4, v10, :cond_4

    .line 160
    iget-object v4, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView$2;->this$0:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;

    #getter for: Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->sb:Ljava/lang/StringBuilder;
    invoke-static {v4}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->access$400(Lcom/logitech/harmonylink/ka1x/view/KeyboardView;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v5

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView$2;->this$0:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;

    #getter for: Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->sb:Ljava/lang/StringBuilder;
    invoke-static {v4}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->access$400(Lcom/logitech/harmonylink/ka1x/view/KeyboardView;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v9, :cond_5

    .line 180
    iget-object v4, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView$2;->this$0:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;

    iget-object v4, v4, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->txtView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView$2;->this$0:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;

    #getter for: Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->sb:Ljava/lang/StringBuilder;
    invoke-static {v5}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->access$400(Lcom/logitech/harmonylink/ka1x/view/KeyboardView;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView$2;->this$0:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;

    #getter for: Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->sb:Ljava/lang/StringBuilder;
    invoke-static {v6}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->access$400(Lcom/logitech/harmonylink/ka1x/view/KeyboardView;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v0           #bitState:I
    .end local v1           #cmd:Lcom/logitech/harmonylink/harmony/Command;
    .end local v2           #newMetaState:I
    .end local v3           #os:I
    :cond_3
    :goto_2
    move v4, v7

    .line 186
    goto/16 :goto_0

    .line 147
    .restart local v0       #bitState:I
    .restart local v1       #cmd:Lcom/logitech/harmonylink/harmony/Command;
    .restart local v2       #newMetaState:I
    .restart local v3       #os:I
    :pswitch_0
    iget-object v4, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView$2;->this$0:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;

    #getter for: Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->sb:Ljava/lang/StringBuilder;
    invoke-static {v4}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->access$400(Lcom/logitech/harmonylink/ka1x/view/KeyboardView;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lt v4, v7, :cond_2

    .line 148
    iget-object v4, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView$2;->this$0:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;

    #getter for: Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->sb:Ljava/lang/StringBuilder;
    invoke-static {v4}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->access$400(Lcom/logitech/harmonylink/ka1x/view/KeyboardView;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView$2;->this$0:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;

    #getter for: Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->sb:Ljava/lang/StringBuilder;
    invoke-static {v5}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->access$400(Lcom/logitech/harmonylink/ka1x/view/KeyboardView;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 152
    :pswitch_1
    iget-object v4, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView$2;->this$0:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;

    const/4 v5, 0x0

    #setter for: Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->sb:Ljava/lang/StringBuilder;
    invoke-static {v4, v5}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->access$402(Lcom/logitech/harmonylink/ka1x/view/KeyboardView;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 153
    iget-object v4, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView$2;->this$0:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #setter for: Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->sb:Ljava/lang/StringBuilder;
    invoke-static {v4, v5}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->access$402(Lcom/logitech/harmonylink/ka1x/view/KeyboardView;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 162
    :cond_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    if-eq v4, v10, :cond_2

    .line 163
    iget-object v4, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView$2;->this$0:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;

    #getter for: Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->sb:Ljava/lang/StringBuilder;
    invoke-static {v4}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->access$400(Lcom/logitech/harmonylink/ka1x/view/KeyboardView;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v5

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 183
    :cond_5
    iget-object v4, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView$2;->this$0:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;

    iget-object v4, v4, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->txtView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView$2;->this$0:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;

    #getter for: Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->sb:Ljava/lang/StringBuilder;
    invoke-static {v5}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->access$400(Lcom/logitech/harmonylink/ka1x/view/KeyboardView;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 108
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch

    .line 141
    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
