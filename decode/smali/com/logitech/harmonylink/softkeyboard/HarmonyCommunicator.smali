.class public Lcom/logitech/harmonylink/softkeyboard/HarmonyCommunicator;
.super Ljava/lang/Object;
.source "HarmonyCommunicator.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/logitech/harmonylink/softkeyboard/HarmonyCommunicator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/logitech/harmonylink/softkeyboard/HarmonyCommunicator;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setBitState(IZZ)I
    .locals 9
    .parameter "currentInt"
    .parameter "alt_state"
    .parameter "fn_state"

    .prologue
    const/16 v8, 0x31

    const/16 v7, 0x30

    const/16 v6, 0x1e

    const/16 v5, 0x1c

    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, binaryRepresentation:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "00000000000000000000000000000000"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 78
    .local v2, buf2:Ljava/lang/StringBuffer;
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 83
    .local v1, buf:Ljava/lang/StringBuffer;
    if-eqz p2, :cond_0

    .line 84
    invoke-virtual {v1, v6, v8}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 89
    :goto_0
    if-eqz p3, :cond_1

    .line 90
    invoke-virtual {v1, v5, v8}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 93
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    return v3

    .line 86
    :cond_0
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {v1, v5, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_1
.end method


# virtual methods
.method public sendRequestToRevue(Lcom/logitech/harmonylink/HarmonyRemoteApplication;Lcom/logitech/harmonylink/harmony/Command;I)V
    .locals 3
    .parameter "mApplication"
    .parameter "cmd"
    .parameter "metaState"

    .prologue
    .line 57
    move v0, p3

    .line 59
    .local v0, newMetaState:I
    invoke-virtual {p2}, Lcom/logitech/harmonylink/harmony/Command;->getCommandId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, -0x136

    if-lt v1, v2, :cond_0

    invoke-virtual {p2}, Lcom/logitech/harmonylink/harmony/Command;->getCommandId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, -0x12c

    if-le v1, v2, :cond_1

    .line 60
    :cond_0
    invoke-virtual {p1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getKeyboard()Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;->isAltPressed()Z

    move-result v1

    invoke-virtual {p1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getKeyboard()Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;->isFunctionPressed()Z

    move-result v2

    invoke-direct {p0, p3, v1, v2}, Lcom/logitech/harmonylink/softkeyboard/HarmonyCommunicator;->setBitState(IZZ)I

    move-result v0

    .line 63
    :cond_1
    invoke-virtual {p1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2, v0}, Lcom/logitech/harmonylink/harmony/Dom;->startSendCommand(Lcom/logitech/harmonylink/harmony/Command;ZI)Z

    .line 64
    return-void
.end method

.method public sendRequestToRevue(Lcom/logitech/harmonylink/HarmonyRemoteApplication;IIZ)Z
    .locals 7
    .parameter "mApplication"
    .parameter "keyCode"
    .parameter "metaState"
    .parameter "isKeyFromIME"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 23
    const/16 v4, 0x43

    if-ne p2, v4, :cond_0

    .line 24
    invoke-virtual {p0, p1, p2, p3}, Lcom/logitech/harmonylink/softkeyboard/HarmonyCommunicator;->sendToRevue(Lcom/logitech/harmonylink/HarmonyRemoteApplication;II)V

    :goto_0
    move v4, v5

    .line 46
    :goto_1
    return v4

    .line 25
    :cond_0
    const/16 v4, -0x13b0

    if-ne p2, v4, :cond_1

    .line 26
    sget-object v4, Lcom/logitech/harmonylink/harmony/Command;->ESC:Lcom/logitech/harmonylink/harmony/Command;

    invoke-virtual {p0, p1, v4, p3}, Lcom/logitech/harmonylink/softkeyboard/HarmonyCommunicator;->sendRequestToRevue(Lcom/logitech/harmonylink/HarmonyRemoteApplication;Lcom/logitech/harmonylink/harmony/Command;I)V

    goto :goto_0

    .line 27
    :cond_1
    const/16 v4, -0x13a6

    if-ne p2, v4, :cond_2

    .line 28
    sget-object v4, Lcom/logitech/harmonylink/harmony/Command;->SEARCH:Lcom/logitech/harmonylink/harmony/Command;

    invoke-virtual {p0, p1, v4, p3}, Lcom/logitech/harmonylink/softkeyboard/HarmonyCommunicator;->sendRequestToRevue(Lcom/logitech/harmonylink/HarmonyRemoteApplication;Lcom/logitech/harmonylink/harmony/Command;I)V

    goto :goto_0

    .line 30
    :cond_2
    if-nez p4, :cond_4

    .line 31
    const/4 v4, 0x2

    invoke-static {v4}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 32
    .local v2, keyCharacterMap:Landroid/view/KeyCharacterMap;
    int-to-char v0, p2

    .line 33
    .local v0, chars:C
    new-array v1, v6, [C

    .line 34
    .local v1, charss:[C
    aput-char v0, v1, v5

    .line 35
    invoke-virtual {v2, v1}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v3

    .line 36
    .local v3, keycodes:[Landroid/view/KeyEvent;
    if-eqz v3, :cond_3

    array-length v4, v3

    if-lez v4, :cond_3

    .line 37
    aget-object v4, v3, v5

    invoke-virtual {v4}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {p0, p1, v4, p3}, Lcom/logitech/harmonylink/softkeyboard/HarmonyCommunicator;->sendToRevue(Lcom/logitech/harmonylink/HarmonyRemoteApplication;II)V

    .end local v0           #chars:C
    .end local v1           #charss:[C
    .end local v2           #keyCharacterMap:Landroid/view/KeyCharacterMap;
    .end local v3           #keycodes:[Landroid/view/KeyEvent;
    :goto_2
    move v4, v6

    .line 44
    goto :goto_1

    .line 39
    .restart local v0       #chars:C
    .restart local v1       #charss:[C
    .restart local v2       #keyCharacterMap:Landroid/view/KeyCharacterMap;
    .restart local v3       #keycodes:[Landroid/view/KeyEvent;
    :cond_3
    sget-object v4, Lcom/logitech/harmonylink/softkeyboard/HarmonyCommunicator;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Unable to find matching key in Build in Keyboard, so skipping key to be send to Revue."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 41
    .end local v0           #chars:C
    .end local v1           #charss:[C
    .end local v2           #keyCharacterMap:Landroid/view/KeyCharacterMap;
    .end local v3           #keycodes:[Landroid/view/KeyEvent;
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/logitech/harmonylink/softkeyboard/HarmonyCommunicator;->sendToRevue(Lcom/logitech/harmonylink/HarmonyRemoteApplication;II)V

    goto :goto_2
.end method

.method public sendToRevue(Lcom/logitech/harmonylink/HarmonyRemoteApplication;II)V
    .locals 3
    .parameter "mApplication"
    .parameter "keyCode"
    .parameter "metaState"

    .prologue
    .line 50
    sget-object v1, Lcom/logitech/harmonylink/harmony/Command;->cmdMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/harmony/Command;

    .line 51
    .local v0, cmd:Lcom/logitech/harmonylink/harmony/Command;
    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/logitech/harmonylink/harmony/Command;

    .end local v0           #cmd:Lcom/logitech/harmonylink/harmony/Command;
    invoke-direct {v0, p2}, Lcom/logitech/harmonylink/harmony/Command;-><init>(I)V

    .line 53
    .restart local v0       #cmd:Lcom/logitech/harmonylink/harmony/Command;
    :cond_0
    invoke-virtual {p0, p1, v0, p3}, Lcom/logitech/harmonylink/softkeyboard/HarmonyCommunicator;->sendRequestToRevue(Lcom/logitech/harmonylink/HarmonyRemoteApplication;Lcom/logitech/harmonylink/harmony/Command;I)V

    .line 54
    return-void
.end method
