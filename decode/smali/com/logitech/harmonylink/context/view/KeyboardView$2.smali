.class Lcom/logitech/harmonylink/context/view/KeyboardView$2;
.super Ljava/lang/Object;
.source "KeyboardView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/view/KeyboardView;-><init>(Landroid/content/Context;Lcom/logitech/harmonylink/context/WatchGtvActivity;Lcom/logitech/harmonylink/HarmonyRemoteApplication;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/view/KeyboardView;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/view/KeyboardView;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/KeyboardView$2;->this$0:Lcom/logitech/harmonylink/context/view/KeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v7, 0x27

    const/16 v5, 0x22

    const/4 v3, 0x0

    const/16 v4, 0x3b

    const/4 v6, 0x1

    .line 111
    sparse-switch p2, :sswitch_data_0

    .line 124
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 125
    invoke-static {}, Lcom/logitech/harmonylink/util/SystemUtil;->getSdkVersionSafely()I

    move-result v0

    .line 126
    .local v0, os:I
    invoke-static {p2}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    move v2, v6

    .line 217
    .end local v0           #os:I
    :goto_0
    return v2

    :sswitch_0
    move v2, v3

    .line 116
    goto :goto_0

    .line 120
    :sswitch_1
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/KeyboardView$2;->this$0:Lcom/logitech/harmonylink/context/view/KeyboardView;

    iget-object v2, v2, Lcom/logitech/harmonylink/context/view/KeyboardView;->mActivity:Lcom/logitech/harmonylink/context/WatchGtvActivity;

    invoke-virtual {v2}, Lcom/logitech/harmonylink/context/WatchGtvActivity;->notifyKeyboardViewObservers()V

    move v2, v3

    .line 121
    goto :goto_0

    .line 131
    .restart local v0       #os:I
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v1

    .line 132
    .local v1, unicodeChar:I
    if-eq v1, v5, :cond_3

    if-eq v1, v7, :cond_3

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_3

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_3

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_3

    if-eq v1, v4, :cond_3

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_3

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_3

    const/16 v2, 0x3f

    if-eq v1, v2, :cond_3

    const/16 v2, 0x60

    if-eq v1, v2, :cond_3

    const/16 v2, 0x7e

    if-eq v1, v2, :cond_3

    .line 138
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/KeyboardView$2;->this$0:Lcom/logitech/harmonylink/context/view/KeyboardView;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    #calls: Lcom/logitech/harmonylink/context/view/KeyboardView;->sendToRevue(II)V
    invoke-static {v2, p2, v3}, Lcom/logitech/harmonylink/context/view/KeyboardView;->access$300(Lcom/logitech/harmonylink/context/view/KeyboardView;II)V

    .line 171
    :goto_1
    packed-switch p2, :pswitch_data_0

    .line 186
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/KeyboardView$2;->this$0:Lcom/logitech/harmonylink/context/view/KeyboardView;

    #getter for: Lcom/logitech/harmonylink/context/view/KeyboardView;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;
    invoke-static {v2}, Lcom/logitech/harmonylink/context/view/KeyboardView;->access$500(Lcom/logitech/harmonylink/context/view/KeyboardView;)Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getKeyboard()Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;->isAltPressed()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/KeyboardView$2;->this$0:Lcom/logitech/harmonylink/context/view/KeyboardView;

    #getter for: Lcom/logitech/harmonylink/context/view/KeyboardView;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;
    invoke-static {v2}, Lcom/logitech/harmonylink/context/view/KeyboardView;->access$500(Lcom/logitech/harmonylink/context/view/KeyboardView;)Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getKeyboard()Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;->isFunctionPressed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 188
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v2

    if-eq v2, v6, :cond_f

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-eq v2, v4, :cond_f

    .line 190
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/KeyboardView$2;->this$0:Lcom/logitech/harmonylink/context/view/KeyboardView;

    #getter for: Lcom/logitech/harmonylink/context/view/KeyboardView;->sb:Ljava/lang/StringBuilder;
    invoke-static {v2}, Lcom/logitech/harmonylink/context/view/KeyboardView;->access$400(Lcom/logitech/harmonylink/context/view/KeyboardView;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/KeyboardView$2;->this$0:Lcom/logitech/harmonylink/context/view/KeyboardView;

    #getter for: Lcom/logitech/harmonylink/context/view/KeyboardView;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;
    invoke-static {v2}, Lcom/logitech/harmonylink/context/view/KeyboardView;->access$500(Lcom/logitech/harmonylink/context/view/KeyboardView;)Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getKeyboard()Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;

    move-result-object v2

    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/KeyboardView$2;->this$0:Lcom/logitech/harmonylink/context/view/KeyboardView;

    #getter for: Lcom/logitech/harmonylink/context/view/KeyboardView;->sb:Ljava/lang/StringBuilder;
    invoke-static {v3}, Lcom/logitech/harmonylink/context/view/KeyboardView;->access$400(Lcom/logitech/harmonylink/context/view/KeyboardView;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;->setCurrentText(Ljava/lang/String;)V

    .line 210
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/KeyboardView$2;->this$0:Lcom/logitech/harmonylink/context/view/KeyboardView;

    #getter for: Lcom/logitech/harmonylink/context/view/KeyboardView;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;
    invoke-static {v2}, Lcom/logitech/harmonylink/context/view/KeyboardView;->access$500(Lcom/logitech/harmonylink/context/view/KeyboardView;)Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getKeyboard()Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;->getCurrentText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x37

    if-le v2, v3, :cond_10

    .line 211
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/KeyboardView$2;->this$0:Lcom/logitech/harmonylink/context/view/KeyboardView;

    iget-object v2, v2, Lcom/logitech/harmonylink/context/view/KeyboardView;->txtView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/KeyboardView$2;->this$0:Lcom/logitech/harmonylink/context/view/KeyboardView;

    #getter for: Lcom/logitech/harmonylink/context/view/KeyboardView;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;
    invoke-static {v3}, Lcom/logitech/harmonylink/context/view/KeyboardView;->access$500(Lcom/logitech/harmonylink/context/view/KeyboardView;)Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getKeyboard()Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;->getCurrentText()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/logitech/harmonylink/context/view/KeyboardView$2;->this$0:Lcom/logitech/harmonylink/context/view/KeyboardView;

    #getter for: Lcom/logitech/harmonylink/context/view/KeyboardView;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;
    invoke-static {v4}, Lcom/logitech/harmonylink/context/view/KeyboardView;->access$500(Lcom/logitech/harmonylink/context/view/KeyboardView;)Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getKeyboard()Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;

    move-result-object v4

    invoke-virtual {v4}, Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;->getCurrentText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x37

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v0           #os:I
    .end local v1           #unicodeChar:I
    :cond_2
    :goto_3
    move v2, v6

    .line 217
    goto/16 :goto_0

    .line 143
    .restart local v0       #os:I
    .restart local v1       #unicodeChar:I
    :cond_3
    if-ne v1, v5, :cond_5

    .line 144
    const/16 v1, -0x12c

    .line 168
    :cond_4
    :goto_4
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/KeyboardView$2;->this$0:Lcom/logitech/harmonylink/context/view/KeyboardView;

    const/16 v3, -0xc8

    #calls: Lcom/logitech/harmonylink/context/view/KeyboardView;->sendToRevue(II)V
    invoke-static {v2, v1, v3}, Lcom/logitech/harmonylink/context/view/KeyboardView;->access$300(Lcom/logitech/harmonylink/context/view/KeyboardView;II)V

    goto/16 :goto_1

    .line 145
    :cond_5
    if-ne v1, v7, :cond_6

    .line 146
    const/16 v1, -0x12d

    goto :goto_4

    .line 147
    :cond_6
    const/16 v2, 0x2a

    if-ne v1, v2, :cond_7

    .line 148
    const/16 v1, -0x12e

    goto :goto_4

    .line 149
    :cond_7
    const/16 v2, 0x2b

    if-ne v1, v2, :cond_8

    .line 150
    const/16 v1, -0x12f

    goto :goto_4

    .line 151
    :cond_8
    const/16 v2, 0x3a

    if-ne v1, v2, :cond_9

    .line 152
    const/16 v1, -0x130

    goto :goto_4

    .line 153
    :cond_9
    if-ne v1, v4, :cond_a

    .line 154
    const/16 v1, -0x131

    goto :goto_4

    .line 155
    :cond_a
    const/16 v2, 0x3c

    if-ne v1, v2, :cond_b

    .line 156
    const/16 v1, -0x132

    goto :goto_4

    .line 157
    :cond_b
    const/16 v2, 0x3e

    if-ne v1, v2, :cond_c

    .line 158
    const/16 v1, -0x133

    goto :goto_4

    .line 159
    :cond_c
    const/16 v2, 0x3f

    if-ne v1, v2, :cond_d

    .line 160
    const/16 v1, -0x134

    goto :goto_4

    .line 161
    :cond_d
    const/16 v2, 0x60

    if-ne v1, v2, :cond_e

    .line 162
    const/16 v1, -0x135

    goto :goto_4

    .line 163
    :cond_e
    const/16 v2, 0x7e

    if-ne v1, v2, :cond_4

    .line 164
    const/16 v1, -0x136

    goto :goto_4

    .line 177
    :pswitch_0
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/KeyboardView$2;->this$0:Lcom/logitech/harmonylink/context/view/KeyboardView;

    #getter for: Lcom/logitech/harmonylink/context/view/KeyboardView;->sb:Ljava/lang/StringBuilder;
    invoke-static {v2}, Lcom/logitech/harmonylink/context/view/KeyboardView;->access$400(Lcom/logitech/harmonylink/context/view/KeyboardView;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lt v2, v6, :cond_1

    .line 178
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/KeyboardView$2;->this$0:Lcom/logitech/harmonylink/context/view/KeyboardView;

    #getter for: Lcom/logitech/harmonylink/context/view/KeyboardView;->sb:Ljava/lang/StringBuilder;
    invoke-static {v2}, Lcom/logitech/harmonylink/context/view/KeyboardView;->access$400(Lcom/logitech/harmonylink/context/view/KeyboardView;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/KeyboardView$2;->this$0:Lcom/logitech/harmonylink/context/view/KeyboardView;

    #getter for: Lcom/logitech/harmonylink/context/view/KeyboardView;->sb:Ljava/lang/StringBuilder;
    invoke-static {v3}, Lcom/logitech/harmonylink/context/view/KeyboardView;->access$400(Lcom/logitech/harmonylink/context/view/KeyboardView;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 182
    :pswitch_1
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/KeyboardView$2;->this$0:Lcom/logitech/harmonylink/context/view/KeyboardView;

    const/4 v3, 0x0

    #setter for: Lcom/logitech/harmonylink/context/view/KeyboardView;->sb:Ljava/lang/StringBuilder;
    invoke-static {v2, v3}, Lcom/logitech/harmonylink/context/view/KeyboardView;->access$402(Lcom/logitech/harmonylink/context/view/KeyboardView;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 183
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/KeyboardView$2;->this$0:Lcom/logitech/harmonylink/context/view/KeyboardView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #setter for: Lcom/logitech/harmonylink/context/view/KeyboardView;->sb:Ljava/lang/StringBuilder;
    invoke-static {v2, v3}, Lcom/logitech/harmonylink/context/view/KeyboardView;->access$402(Lcom/logitech/harmonylink/context/view/KeyboardView;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 192
    :cond_f
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-eq v2, v4, :cond_1

    .line 193
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/KeyboardView$2;->this$0:Lcom/logitech/harmonylink/context/view/KeyboardView;

    #getter for: Lcom/logitech/harmonylink/context/view/KeyboardView;->sb:Ljava/lang/StringBuilder;
    invoke-static {v2}, Lcom/logitech/harmonylink/context/view/KeyboardView;->access$400(Lcom/logitech/harmonylink/context/view/KeyboardView;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3, v6}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 214
    :cond_10
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/KeyboardView$2;->this$0:Lcom/logitech/harmonylink/context/view/KeyboardView;

    iget-object v2, v2, Lcom/logitech/harmonylink/context/view/KeyboardView;->txtView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/KeyboardView$2;->this$0:Lcom/logitech/harmonylink/context/view/KeyboardView;

    #getter for: Lcom/logitech/harmonylink/context/view/KeyboardView;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;
    invoke-static {v3}, Lcom/logitech/harmonylink/context/view/KeyboardView;->access$500(Lcom/logitech/harmonylink/context/view/KeyboardView;)Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getKeyboard()Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;->getCurrentText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 111
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch

    .line 171
    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
