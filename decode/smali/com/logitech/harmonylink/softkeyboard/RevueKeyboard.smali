.class public Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;
.super Ljava/lang/Object;
.source "RevueKeyboard.java"


# instance fields
.field private currentText:Ljava/lang/String;

.field private isAltPressed:Z

.field private isFunctionPressed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;->currentText:Ljava/lang/String;

    return-object v0
.end method

.method public isAltPressed()Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;->isAltPressed:Z

    return v0
.end method

.method public isFunctionPressed()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;->isFunctionPressed:Z

    return v0
.end method

.method public setAltPressed(Z)V
    .locals 2
    .parameter "isAltPressed"

    .prologue
    const/4 v1, 0x0

    .line 22
    iget-boolean v0, p0, Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;->isAltPressed:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;->isAltPressed:Z

    .line 23
    iput-boolean v1, p0, Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;->isFunctionPressed:Z

    .line 24
    return-void

    .line 22
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setCurrentText(Ljava/lang/String;)V
    .locals 0
    .parameter "currentText"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;->currentText:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setFunctionPressed(Z)V
    .locals 2
    .parameter "isFunctionPressed"

    .prologue
    const/4 v1, 0x0

    .line 31
    iget-boolean v0, p0, Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;->isFunctionPressed:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;->isFunctionPressed:Z

    .line 32
    iput-boolean v1, p0, Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;->isAltPressed:Z

    .line 33
    return-void

    .line 31
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
