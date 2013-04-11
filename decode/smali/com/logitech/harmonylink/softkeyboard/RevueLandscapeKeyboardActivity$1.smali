.class Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity$1;
.super Ljava/lang/Object;
.source "RevueLandscapeKeyboardActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->setTxtListener(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity$1;->this$0:Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 91
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 93
    invoke-static {}, Lcom/logitech/harmonylink/util/SystemUtil;->getSdkVersionSafely()I

    move-result v0

    .line 94
    .local v0, os:I
    invoke-static {p2}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    move v1, v4

    .line 111
    .end local v0           #os:I
    :goto_0
    return v1

    .line 100
    .restart local v0       #os:I
    :cond_0
    const/16 v1, 0x43

    if-ne p2, v1, :cond_2

    .line 101
    iget-object v1, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity$1;->this$0:Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v2

    #calls: Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->handleOnKey(IIIZ)V
    invoke-static {v1, p2, p2, v2, v4}, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->access$000(Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;IIIZ)V

    .end local v0           #os:I
    :cond_1
    :goto_1
    move v1, v4

    .line 111
    goto :goto_0

    .line 103
    .restart local v0       #os:I
    :cond_2
    iget-object v1, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity$1;->this$0:Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    #calls: Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->handleOnKey(IIIZ)V
    invoke-static {v1, v2, p2, v3, v4}, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->access$000(Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;IIIZ)V

    goto :goto_1
.end method
