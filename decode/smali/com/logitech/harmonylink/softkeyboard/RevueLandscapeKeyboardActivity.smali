.class public Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;
.super Lcom/logitech/harmonylink/ui/common/BaseActivity;
.source "RevueLandscapeKeyboardActivity.java"

# interfaces
.implements Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field protected final ALPHABETIC_KEYBOARD:I

.field protected final KEY_ATL:I

.field protected final KEY_ENTER:I

.field protected final KEY_ESC:I

.field protected final KEY_FN:I

.field protected final KEY_MICROPHONE:I

.field protected final KEY_SEARCH:I

.field private MAX_DISPLAY_TEXT_LIMIT:I

.field protected final NUMERIC_KEYBOARD:I

.field protected final SHIFTED_KEYBOARD:I

.field protected final SYMBOLS_KEYBOARD:I

.field private isCapsLockPermanant:Z

.field private isNextCharacterCaps:Z

.field protected mCurrentKeyboardSelected:I

.field mCurrentKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field mKeyboard:Landroid/inputmethodservice/Keyboard;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, -0x7d0

    .line 17
    invoke-direct {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;-><init>()V

    .line 22
    iput v1, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->ALPHABETIC_KEYBOARD:I

    .line 23
    const/16 v0, -0x7da

    iput v0, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->NUMERIC_KEYBOARD:I

    .line 24
    const/16 v0, -0x7e4

    iput v0, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->SYMBOLS_KEYBOARD:I

    .line 25
    const/16 v0, -0x7ee

    iput v0, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->SHIFTED_KEYBOARD:I

    .line 26
    const/16 v0, 0xa

    iput v0, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->KEY_ENTER:I

    .line 29
    const/16 v0, -0x1388

    iput v0, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->KEY_ATL:I

    .line 30
    const/16 v0, -0x1392

    iput v0, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->KEY_FN:I

    .line 31
    const/16 v0, -0x139c

    iput v0, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->KEY_MICROPHONE:I

    .line 32
    const/16 v0, -0x13a6

    iput v0, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->KEY_SEARCH:I

    .line 33
    const/16 v0, -0x13b0

    iput v0, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->KEY_ESC:I

    .line 34
    iput-boolean v2, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->isNextCharacterCaps:Z

    .line 35
    iput-boolean v2, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->isCapsLockPermanant:Z

    .line 37
    iput v1, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->mCurrentKeyboardSelected:I

    .line 42
    const/16 v0, 0x4b

    iput v0, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->MAX_DISPLAY_TEXT_LIMIT:I

    return-void
.end method

.method static synthetic access$000(Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;IIIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->handleOnKey(IIIZ)V

    return-void
.end method

.method private getDisplayableText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 483
    sget-object v1, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    if-eqz v1, :cond_1

    .line 484
    sget-object v1, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getKeyboard()Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;->getCurrentText()Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, currentValue:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 486
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->MAX_DISPLAY_TEXT_LIMIT:I

    if-le v1, v2, :cond_0

    .line 487
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->MAX_DISPLAY_TEXT_LIMIT:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 494
    .end local v0           #currentValue:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #currentValue:Ljava/lang/String;
    :cond_0
    move-object v1, v0

    .line 492
    goto :goto_0

    .line 494
    .end local v0           #currentValue:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleCapsFlipKeyboard(I)V
    .locals 3
    .parameter "primaryCode"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 273
    const/16 v0, -0x7ee

    if-ne p1, v0, :cond_3

    .line 274
    iget-boolean v0, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->isNextCharacterCaps:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->isCapsLockPermanant:Z

    if-nez v0, :cond_1

    .line 275
    iput-boolean v2, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->isCapsLockPermanant:Z

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    iget-boolean v0, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->isNextCharacterCaps:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->isCapsLockPermanant:Z

    if-eqz v0, :cond_2

    .line 277
    iput-boolean v1, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->isCapsLockPermanant:Z

    iput-boolean v1, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->isNextCharacterCaps:Z

    goto :goto_0

    .line 280
    :cond_2
    iput-boolean v2, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->isNextCharacterCaps:Z

    .line 281
    iput-boolean v1, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->isCapsLockPermanant:Z

    goto :goto_0

    .line 283
    :cond_3
    iget-boolean v0, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->isNextCharacterCaps:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->isCapsLockPermanant:Z

    if-nez v0, :cond_0

    .line 284
    iput-boolean v1, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->isNextCharacterCaps:Z

    .line 285
    iput-boolean v1, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->isCapsLockPermanant:Z

    goto :goto_0
.end method

.method private handleOnKey(IIIZ)V
    .locals 8
    .parameter "primaryCodeForDisplay"
    .parameter "primaryCodeForHarmony"
    .parameter "modifier"
    .parameter "isFromHardKeyboard"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 194
    const/4 v0, 0x1

    .line 195
    .local v0, isContinue:Z
    const v4, 0x7f0700a6

    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 196
    .local v3, txtView:Landroid/widget/TextView;
    if-eqz v3, :cond_2

    .line 197
    const/4 v2, 0x0

    .line 198
    .local v2, sb:Ljava/lang/StringBuilder;
    sget-object v4, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v4}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getKeyboard()Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;

    move-result-object v4

    invoke-virtual {v4}, Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;->getCurrentText()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2           #sb:Ljava/lang/StringBuilder;
    sget-object v4, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v4}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getKeyboard()Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;

    move-result-object v4

    invoke-virtual {v4}, Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;->getCurrentText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    .restart local v2       #sb:Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->isKeyboardSwitchKey(I)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->isRevueToogleKeyPressed(I)Z

    move-result v4

    if-nez v4, :cond_9

    .line 204
    sparse-switch p1, :sswitch_data_0

    .line 225
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->isRevueSpecialKey(I)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v4}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getKeyboard()Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;

    move-result-object v4

    invoke-virtual {v4}, Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v4}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getKeyboard()Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;

    move-result-object v4

    invoke-virtual {v4}, Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;->isFunctionPressed()Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, -0x13b0

    if-eq p1, v4, :cond_0

    .line 228
    iget-boolean v4, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->isNextCharacterCaps:Z

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->mCurrentKeyboardSelected:I

    const/16 v5, -0x7d0

    if-ne v4, v5, :cond_4

    .line 229
    int-to-char v4, p1

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 236
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 237
    sget-object v4, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v4}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getKeyboard()Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;->setCurrentText(Ljava/lang/String;)V

    .line 238
    invoke-direct {p0}, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->getDisplayableText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    const/16 v4, -0x139c

    if-ne p2, v4, :cond_5

    .line 240
    invoke-direct {p0}, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->handleOrientationChange()V

    .line 241
    sget-object v4, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v4}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->triggerVoiceSearch()V

    .line 255
    :cond_1
    :goto_2
    iget-boolean v4, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->isNextCharacterCaps:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->isCapsLockPermanant:Z

    if-nez v4, :cond_2

    .line 256
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->switchKeyboard(I)V

    .line 269
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :cond_2
    :goto_3
    return-void

    .line 201
    .restart local v2       #sb:Ljava/lang/StringBuilder;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2           #sb:Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v2       #sb:Ljava/lang/StringBuilder;
    goto :goto_0

    .line 208
    :sswitch_0
    invoke-direct {p0}, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->handleOrientationChange()V

    .line 209
    const/4 v0, 0x0

    .line 210
    goto :goto_1

    .line 212
    :sswitch_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lt v4, v6, :cond_0

    .line 213
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 218
    :sswitch_2
    const/4 v2, 0x0

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2           #sb:Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .restart local v2       #sb:Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->handleOrientationChange()V

    goto :goto_1

    .line 231
    :cond_4
    int-to-char v4, p1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 243
    :cond_5
    sget-object v4, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v4}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getHarmonyCommunicator()Lcom/logitech/harmonylink/softkeyboard/HarmonyCommunicator;

    move-result-object v1

    .line 244
    .local v1, mHarmonyCommunicator:Lcom/logitech/harmonylink/softkeyboard/HarmonyCommunicator;
    if-eqz v1, :cond_1

    .line 246
    if-nez p4, :cond_8

    .line 247
    sget-object v4, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    if-eqz p4, :cond_6

    move v5, p3

    :goto_4
    invoke-virtual {v1, v4, p2, v5, v7}, Lcom/logitech/harmonylink/softkeyboard/HarmonyCommunicator;->sendRequestToRevue(Lcom/logitech/harmonylink/HarmonyRemoteApplication;IIZ)Z

    goto :goto_2

    :cond_6
    iget-boolean v5, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->isNextCharacterCaps:Z

    if-eqz v5, :cond_7

    move v5, v6

    goto :goto_4

    :cond_7
    move v5, v7

    goto :goto_4

    .line 250
    :cond_8
    sget-object v4, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v1, v4, p2, p3}, Lcom/logitech/harmonylink/softkeyboard/HarmonyCommunicator;->sendToRevue(Lcom/logitech/harmonylink/HarmonyRemoteApplication;II)V

    goto :goto_2

    .line 259
    .end local v1           #mHarmonyCommunicator:Lcom/logitech/harmonylink/softkeyboard/HarmonyCommunicator;
    :cond_9
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->isRevueToogleKeyPressed(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 260
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->handleRevueKeyPressed(I)V

    goto :goto_3

    .line 262
    :cond_a
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->switchKeyboard(I)V

    goto :goto_3

    .line 204
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0xa -> :sswitch_2
        0x42 -> :sswitch_2
        0x43 -> :sswitch_1
    .end sparse-switch
.end method

.method private handleOrientationChange()V
    .locals 2

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->finish()V

    .line 368
    sget-object v0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->sendKeyboardOrientationChanged(I)V

    .line 369
    return-void
.end method

.method private handleRevueKeyPressed(I)V
    .locals 2
    .parameter "primaryCode"

    .prologue
    const/4 v1, 0x1

    .line 416
    sparse-switch p1, :sswitch_data_0

    .line 426
    :goto_0
    iget v0, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->mCurrentKeyboardSelected:I

    invoke-direct {p0, v0}, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->switchKeyboard(I)V

    .line 427
    return-void

    .line 418
    :sswitch_0
    sget-object v0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getKeyboard()Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;->setAltPressed(Z)V

    goto :goto_0

    .line 421
    :sswitch_1
    sget-object v0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getKeyboard()Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;->setFunctionPressed(Z)V

    goto :goto_0

    .line 416
    :sswitch_data_0
    .sparse-switch
        -0x1392 -> :sswitch_1
        -0x1388 -> :sswitch_0
    .end sparse-switch
.end method

.method private isRevueSpecialKey(I)Z
    .locals 1
    .parameter "primaryCode"

    .prologue
    .line 439
    sparse-switch p1, :sswitch_data_0

    .line 444
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 442
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 439
    nop

    :sswitch_data_0
    .sparse-switch
        -0x13a6 -> :sswitch_0
        -0x139c -> :sswitch_0
    .end sparse-switch
.end method

.method private isRevueToogleKeyPressed(I)Z
    .locals 1
    .parameter "primaryCode"

    .prologue
    .line 430
    sparse-switch p1, :sswitch_data_0

    .line 435
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 433
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 430
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1392 -> :sswitch_0
        -0x1388 -> :sswitch_0
    .end sparse-switch
.end method

.method private setTxtListener(Landroid/widget/TextView;)V
    .locals 2
    .parameter "txtView1"

    .prologue
    .line 86
    const v1, 0x7f0700a6

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 87
    .local v0, txtView:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v1

    if-nez v1, :cond_0

    .line 88
    new-instance v1, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity$1;

    invoke-direct {v1, p0}, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity$1;-><init>(Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 114
    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 116
    :cond_0
    return-void
.end method

.method private switchKeyboard(I)V
    .locals 7
    .parameter "revueKeyPressed"

    .prologue
    const/16 v6, -0x7d0

    .line 291
    const/4 v0, 0x0

    .line 292
    .local v0, flag:Z
    const v3, 0x7f0700a5

    invoke-virtual {p0, v3}, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 293
    .local v1, keyboardParent:Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03002f

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/inputmethodservice/KeyboardView;

    .line 294
    .local v2, mInputView:Landroid/inputmethodservice/KeyboardView;
    invoke-virtual {v2, p0}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    .line 295
    const/16 v3, -0x7ee

    if-ne p1, v3, :cond_0

    .line 296
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->handleCapsFlipKeyboard(I)V

    .line 304
    invoke-virtual {p0, v6}, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->getNewKeyboard(I)Landroid/inputmethodservice/Keyboard;

    move-result-object v3

    iput-object v3, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    .line 305
    iput v6, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->mCurrentKeyboardSelected:I

    .line 315
    :goto_0
    iget-object v3, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v2, v3}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 316
    iget-boolean v3, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->isNextCharacterCaps:Z

    invoke-virtual {v2, v3}, Landroid/inputmethodservice/KeyboardView;->setShifted(Z)Z

    .line 320
    iget-object v3, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->mCurrentKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 321
    iput-object v2, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->mCurrentKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 322
    iget-object v3, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->mCurrentKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 323
    return-void

    .line 307
    :cond_0
    iget v3, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->mCurrentKeyboardSelected:I

    if-ne v3, v6, :cond_1

    iget-boolean v3, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->isNextCharacterCaps:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->isCapsLockPermanant:Z

    if-nez v3, :cond_1

    .line 308
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->isNextCharacterCaps:Z

    .line 309
    const/16 p1, -0x7d0

    .line 311
    :cond_1
    invoke-virtual {p0, p1}, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->getNewKeyboard(I)Landroid/inputmethodservice/Keyboard;

    move-result-object v3

    iput-object v3, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    .line 312
    iput p1, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->mCurrentKeyboardSelected:I

    goto :goto_0
.end method


# virtual methods
.method protected getNewKeyboard(I)Landroid/inputmethodservice/Keyboard;
    .locals 2
    .parameter "primaryCode"

    .prologue
    const v1, 0x7f040006

    .line 372
    sparse-switch p1, :sswitch_data_0

    .line 400
    new-instance v0, Landroid/inputmethodservice/Keyboard;

    invoke-direct {v0, p0, v1}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    :goto_0
    return-object v0

    .line 374
    :sswitch_0
    sget-object v0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getKeyboard()Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;->isAltPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    new-instance v0, Landroid/inputmethodservice/Keyboard;

    const v1, 0x7f040007

    invoke-direct {v0, p0, v1}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 376
    :cond_0
    sget-object v0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getKeyboard()Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;->isFunctionPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    new-instance v0, Landroid/inputmethodservice/Keyboard;

    const v1, 0x7f040008

    invoke-direct {v0, p0, v1}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 379
    :cond_1
    new-instance v0, Landroid/inputmethodservice/Keyboard;

    invoke-direct {v0, p0, v1}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 383
    :sswitch_1
    sget-object v0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getKeyboard()Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;->isAltPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 384
    new-instance v0, Landroid/inputmethodservice/Keyboard;

    const v1, 0x7f040004

    invoke-direct {v0, p0, v1}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 385
    :cond_2
    sget-object v0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getKeyboard()Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;->isFunctionPressed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 386
    new-instance v0, Landroid/inputmethodservice/Keyboard;

    const v1, 0x7f040005

    invoke-direct {v0, p0, v1}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 388
    :cond_3
    new-instance v0, Landroid/inputmethodservice/Keyboard;

    const v1, 0x7f040003

    invoke-direct {v0, p0, v1}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 391
    :sswitch_2
    sget-object v0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getKeyboard()Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;->isAltPressed()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 392
    new-instance v0, Landroid/inputmethodservice/Keyboard;

    const v1, 0x7f04000a

    invoke-direct {v0, p0, v1}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 396
    :cond_4
    new-instance v0, Landroid/inputmethodservice/Keyboard;

    const v1, 0x7f040009

    invoke-direct {v0, p0, v1}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 372
    :sswitch_data_0
    .sparse-switch
        -0x7ee -> :sswitch_1
        -0x7e4 -> :sswitch_2
        -0x7da -> :sswitch_0
        -0x7d0 -> :sswitch_1
    .end sparse-switch
.end method

.method protected isKeyboardSwitchKey(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 405
    sparse-switch p1, :sswitch_data_0

    .line 412
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 410
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 405
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ee -> :sswitch_0
        -0x7e4 -> :sswitch_0
        -0x7da -> :sswitch_0
        -0x7d0 -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .parameter "newConfig"

    .prologue
    const v7, 0x7f0700a6

    const v6, 0x7f0700a5

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 329
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v5, :cond_1

    .line 331
    invoke-virtual {p0, v7}, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 333
    .local v2, txtView:Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->handleOrientationChange()V

    .line 363
    .end local v2           #txtView:Landroid/widget/TextView;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 364
    return-void

    .line 337
    :cond_1
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_2

    iget v3, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v3, v5, :cond_2

    .line 340
    invoke-virtual {p0, v7}, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 341
    .restart local v2       #txtView:Landroid/widget/TextView;
    invoke-direct {p0, v2}, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->setTxtListener(Landroid/widget/TextView;)V

    .line 342
    invoke-virtual {p0, v6}, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 343
    .local v0, keyboardParent:Landroid/widget/LinearLayout;
    iget-object v3, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->mCurrentKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 344
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    goto :goto_0

    .line 352
    .end local v0           #keyboardParent:Landroid/widget/LinearLayout;
    .end local v2           #txtView:Landroid/widget/TextView;
    :cond_2
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_0

    iget v3, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v3, v4, :cond_0

    .line 355
    invoke-virtual {p0, v6}, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 356
    .restart local v0       #keyboardParent:Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03002f

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/KeyboardView;

    .line 357
    .local v1, mInputView:Landroid/inputmethodservice/KeyboardView;
    invoke-virtual {v1, p0}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    .line 358
    const/16 v3, -0x7d0

    invoke-virtual {p0, v3}, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->getNewKeyboard(I)Landroid/inputmethodservice/Keyboard;

    move-result-object v3

    iput-object v3, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    .line 359
    iget-object v3, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v1, v3}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 360
    iput-object v1, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->mCurrentKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 361
    iget-object v3, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->mCurrentKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 46
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v4, 0x7f030031

    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->setContentView(I)V

    .line 48
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->isNextCharacterCaps:Z

    .line 50
    const v4, 0x7f0700a6

    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 51
    .local v3, txtView:Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->getDisplayableText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    :cond_0
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 55
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 56
    invoke-virtual {v3}, Landroid/widget/TextView;->requestFocus()Z

    .line 58
    invoke-virtual {p0}, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 60
    .local v0, conf:Landroid/content/res/Configuration;
    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v6, :cond_2

    iget v4, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v4, v5, :cond_2

    .line 62
    invoke-direct {p0, v3}, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->setTxtListener(Landroid/widget/TextView;)V

    .line 82
    :cond_1
    :goto_0
    return-void

    .line 72
    :cond_2
    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v6, :cond_1

    iget v4, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v4, v6, :cond_1

    .line 73
    const v4, 0x7f0700a5

    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 74
    .local v1, keyboardParent:Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03002f

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/inputmethodservice/KeyboardView;

    .line 75
    .local v2, mInputView:Landroid/inputmethodservice/KeyboardView;
    invoke-virtual {v2, p0}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    .line 76
    const/16 v4, -0x7d0

    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->getNewKeyboard(I)Landroid/inputmethodservice/Keyboard;

    move-result-object v4

    iput-object v4, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    .line 77
    iget-object v4, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v2, v4}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 78
    iput-object v2, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->mCurrentKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 79
    iget-object v4, p0, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->mCurrentKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onKey(I[I)V
    .locals 1
    .parameter "primaryCode"
    .parameter "keyCodes"

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, p1, p1, v0, v0}, Lcom/logitech/harmonylink/softkeyboard/RevueLandscapeKeyboardActivity;->handleOnKey(IIIZ)V

    .line 190
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 498
    const/4 v0, 0x0

    return v0
.end method

.method public onPress(I)V
    .locals 0
    .parameter "primaryCode"

    .prologue
    .line 451
    return-void
.end method

.method public onRelease(I)V
    .locals 0
    .parameter "primaryCode"

    .prologue
    .line 456
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 461
    return-void
.end method

.method public swipeDown()V
    .locals 0

    .prologue
    .line 466
    return-void
.end method

.method public swipeLeft()V
    .locals 0

    .prologue
    .line 471
    return-void
.end method

.method public swipeRight()V
    .locals 0

    .prologue
    .line 476
    return-void
.end method

.method public swipeUp()V
    .locals 0

    .prologue
    .line 480
    return-void
.end method
