.class public Lcom/logitech/harmonylink/context/EnterPinActivity;
.super Lcom/logitech/harmonylink/ui/common/BaseActivity;
.source "EnterPinActivity.java"

# interfaces
.implements Lcom/logitech/connect/pairing/PinResponseObserver;


# static fields
.field private static final DIALOG_ERROR:I = 0x1

.field private static final NUMBER_OF_FIELDS:I = 0x4


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mEntryFieldIndex:I

.field private mEntryFields:[Landroid/widget/EditText;

.field private mKeyViewIds:[I

.field mLockEntry:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;-><init>()V

    .line 29
    iput-boolean v1, p0, Lcom/logitech/harmonylink/context/EnterPinActivity;->mLockEntry:Z

    .line 30
    const-class v0, Lcom/logitech/harmonylink/context/EnterPinActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/EnterPinActivity;->LOG_TAG:Ljava/lang/String;

    .line 32
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/EnterPinActivity;->mKeyViewIds:[I

    .line 35
    iput v1, p0, Lcom/logitech/harmonylink/context/EnterPinActivity;->mEntryFieldIndex:I

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/EditText;

    iput-object v0, p0, Lcom/logitech/harmonylink/context/EnterPinActivity;->mEntryFields:[Landroid/widget/EditText;

    return-void

    .line 32
    nop

    :array_0
    .array-data 0x4
        0x6dt 0x0t 0x7t 0x7ft
        0x6et 0x0t 0x7t 0x7ft
        0x6ft 0x0t 0x7t 0x7ft
        0x70t 0x0t 0x7t 0x7ft
        0x71t 0x0t 0x7t 0x7ft
        0x72t 0x0t 0x7t 0x7ft
        0x73t 0x0t 0x7t 0x7ft
        0x74t 0x0t 0x7t 0x7ft
        0x75t 0x0t 0x7t 0x7ft
        0x76t 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/logitech/harmonylink/context/EnterPinActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/logitech/harmonylink/context/EnterPinActivity;->mEntryFieldIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/logitech/harmonylink/context/EnterPinActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput p1, p0, Lcom/logitech/harmonylink/context/EnterPinActivity;->mEntryFieldIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/logitech/harmonylink/context/EnterPinActivity;)[Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/logitech/harmonylink/context/EnterPinActivity;->mEntryFields:[Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/logitech/harmonylink/context/EnterPinActivity;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/context/EnterPinActivity;->doButtonPush(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$300(Lcom/logitech/harmonylink/context/EnterPinActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/logitech/harmonylink/context/EnterPinActivity;->delete()V

    return-void
.end method

.method private delete()V
    .locals 2

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/logitech/harmonylink/context/EnterPinActivity;->mLockEntry:Z

    if-nez v0, :cond_1

    .line 175
    iget v0, p0, Lcom/logitech/harmonylink/context/EnterPinActivity;->mEntryFieldIndex:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/logitech/harmonylink/context/EnterPinActivity;->mEntryFieldIndex:I

    .line 176
    iget v0, p0, Lcom/logitech/harmonylink/context/EnterPinActivity;->mEntryFieldIndex:I

    if-gez v0, :cond_0

    .line 177
    const/4 v0, 0x0

    iput v0, p0, Lcom/logitech/harmonylink/context/EnterPinActivity;->mEntryFieldIndex:I

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/context/EnterPinActivity;->mEntryFields:[Landroid/widget/EditText;

    iget v1, p0, Lcom/logitech/harmonylink/context/EnterPinActivity;->mEntryFieldIndex:I

    aget-object v0, v0, v1

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcom/logitech/harmonylink/context/EnterPinActivity;->mEntryFields:[Landroid/widget/EditText;

    iget v1, p0, Lcom/logitech/harmonylink/context/EnterPinActivity;->mEntryFieldIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 182
    :cond_1
    return-void
.end method

.method private doButtonPush(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/logitech/harmonylink/context/EnterPinActivity;->mLockEntry:Z

    if-nez v0, :cond_0

    .line 159
    iget v0, p0, Lcom/logitech/harmonylink/context/EnterPinActivity;->mEntryFieldIndex:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 160
    iget-object v0, p0, Lcom/logitech/harmonylink/context/EnterPinActivity;->mEntryFields:[Landroid/widget/EditText;

    iget v1, p0, Lcom/logitech/harmonylink/context/EnterPinActivity;->mEntryFieldIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 161
    invoke-direct {p0}, Lcom/logitech/harmonylink/context/EnterPinActivity;->submit()V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/logitech/harmonylink/context/EnterPinActivity;->mEntryFields:[Landroid/widget/EditText;

    iget v1, p0, Lcom/logitech/harmonylink/context/EnterPinActivity;->mEntryFieldIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget v0, p0, Lcom/logitech/harmonylink/context/EnterPinActivity;->mEntryFieldIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/logitech/harmonylink/context/EnterPinActivity;->mEntryFieldIndex:I

    .line 168
    iget-object v0, p0, Lcom/logitech/harmonylink/context/EnterPinActivity;->mEntryFields:[Landroid/widget/EditText;

    iget v1, p0, Lcom/logitech/harmonylink/context/EnterPinActivity;->mEntryFieldIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method

.method private submit()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 185
    iput-boolean v6, p0, Lcom/logitech/harmonylink/context/EnterPinActivity;->mLockEntry:Z

    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/logitech/harmonylink/context/EnterPinActivity;->mEntryFields:[Landroid/widget/EditText;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/logitech/harmonylink/context/EnterPinActivity;->mEntryFields:[Landroid/widget/EditText;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/logitech/harmonylink/context/EnterPinActivity;->mEntryFields:[Landroid/widget/EditText;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/logitech/harmonylink/context/EnterPinActivity;->mEntryFields:[Landroid/widget/EditText;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, submissionString:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/EnterPinActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    .line 190
    .local v1, mainApp:Lcom/logitech/harmonylink/HarmonyRemoteApplication;
    invoke-virtual {v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getPairingResponseHandler()Lcom/logitech/connect/pairing/PairingResponseHandler;

    move-result-object v0

    .line 191
    .local v0, handler:Lcom/logitech/connect/pairing/PairingResponseHandler;
    invoke-virtual {v0, v2}, Lcom/logitech/connect/pairing/PairingResponseHandler;->tryPin(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0, v6}, Lcom/logitech/harmonylink/context/EnterPinActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 194
    return-void
.end method


# virtual methods
.method public initiateCancel()V
    .locals 7

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/EnterPinActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    .line 247
    .local v2, mainApp:Lcom/logitech/harmonylink/HarmonyRemoteApplication;
    invoke-virtual {v2}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getPairingResponseHandler()Lcom/logitech/connect/pairing/PairingResponseHandler;

    move-result-object v0

    .line 248
    .local v0, handler:Lcom/logitech/connect/pairing/PairingResponseHandler;
    invoke-virtual {v0}, Lcom/logitech/connect/pairing/PairingResponseHandler;->cancel()V

    .line 250
    sget-object v5, Lcom/logitech/connect/ConnectClient;->sInstance:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v5}, Lcom/logitech/connect/ConnectClient;->getTargets()Ljava/util/ArrayList;

    move-result-object v4

    .line 251
    .local v4, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/connect/Target;>;"
    if-eqz v4, :cond_2

    .line 252
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/logitech/connect/Target;

    .line 253
    .local v3, target:Lcom/logitech/connect/Target;
    invoke-virtual {v3}, Lcom/logitech/connect/Target;->getConnectionStatus()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    invoke-virtual {v3}, Lcom/logitech/connect/Target;->getConnectionStatus()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 255
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/logitech/connect/Target;->setConnectionStatus(I)V

    goto :goto_0

    .line 259
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #target:Lcom/logitech/connect/Target;
    :cond_2
    return-void
.end method

.method public onCancel()V
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/context/EnterPinActivity;->setResult(I)V

    .line 241
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/EnterPinActivity;->finish()V

    .line 242
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 42
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const/4 v8, 0x5

    invoke-virtual {p0, v8}, Lcom/logitech/harmonylink/context/EnterPinActivity;->requestWindowFeature(I)Z

    .line 44
    invoke-virtual {p0, v11}, Lcom/logitech/harmonylink/context/EnterPinActivity;->requestWindowFeature(I)Z

    .line 45
    const v8, 0x7f030020

    invoke-virtual {p0, v8}, Lcom/logitech/harmonylink/context/EnterPinActivity;->setContentView(I)V

    .line 58
    new-instance v3, Lcom/logitech/harmonylink/context/EnterPinActivity$1;

    invoke-direct {v3, p0}, Lcom/logitech/harmonylink/context/EnterPinActivity$1;-><init>(Lcom/logitech/harmonylink/context/EnterPinActivity;)V

    .line 102
    .local v3, focusListener:Landroid/view/View$OnFocusChangeListener;
    iget-object v9, p0, Lcom/logitech/harmonylink/context/EnterPinActivity;->mEntryFields:[Landroid/widget/EditText;

    const v8, 0x7f070069

    invoke-virtual {p0, v8}, Lcom/logitech/harmonylink/context/EnterPinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    aput-object v8, v9, v10

    .line 103
    iget-object v8, p0, Lcom/logitech/harmonylink/context/EnterPinActivity;->mEntryFields:[Landroid/widget/EditText;

    aget-object v8, v8, v10

    invoke-virtual {v8}, Landroid/widget/EditText;->requestFocus()Z

    .line 104
    iget-object v8, p0, Lcom/logitech/harmonylink/context/EnterPinActivity;->mEntryFields:[Landroid/widget/EditText;

    aget-object v8, v8, v10

    invoke-virtual {v8, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 105
    iget-object v9, p0, Lcom/logitech/harmonylink/context/EnterPinActivity;->mEntryFields:[Landroid/widget/EditText;

    const v8, 0x7f07006a

    invoke-virtual {p0, v8}, Lcom/logitech/harmonylink/context/EnterPinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    aput-object v8, v9, v11

    .line 106
    iget-object v8, p0, Lcom/logitech/harmonylink/context/EnterPinActivity;->mEntryFields:[Landroid/widget/EditText;

    aget-object v8, v8, v11

    invoke-virtual {v8, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 107
    iget-object v9, p0, Lcom/logitech/harmonylink/context/EnterPinActivity;->mEntryFields:[Landroid/widget/EditText;

    const v8, 0x7f07006b

    invoke-virtual {p0, v8}, Lcom/logitech/harmonylink/context/EnterPinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    aput-object v8, v9, v12

    .line 108
    iget-object v8, p0, Lcom/logitech/harmonylink/context/EnterPinActivity;->mEntryFields:[Landroid/widget/EditText;

    aget-object v8, v8, v12

    invoke-virtual {v8, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 109
    iget-object v9, p0, Lcom/logitech/harmonylink/context/EnterPinActivity;->mEntryFields:[Landroid/widget/EditText;

    const v8, 0x7f07006c

    invoke-virtual {p0, v8}, Lcom/logitech/harmonylink/context/EnterPinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    aput-object v8, v9, v13

    .line 110
    iget-object v8, p0, Lcom/logitech/harmonylink/context/EnterPinActivity;->mEntryFields:[Landroid/widget/EditText;

    aget-object v8, v8, v13

    invoke-virtual {v8, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 114
    new-instance v7, Lcom/logitech/harmonylink/context/EnterPinActivity$2;

    invoke-direct {v7, p0}, Lcom/logitech/harmonylink/context/EnterPinActivity$2;-><init>(Lcom/logitech/harmonylink/context/EnterPinActivity;)V

    .line 121
    .local v7, ourListener:Landroid/view/View$OnClickListener;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    iget-object v8, p0, Lcom/logitech/harmonylink/context/EnterPinActivity;->mKeyViewIds:[I

    array-length v8, v8

    if-ge v5, v8, :cond_0

    .line 122
    iget-object v8, p0, Lcom/logitech/harmonylink/context/EnterPinActivity;->mKeyViewIds:[I

    aget v8, v8, v5

    invoke-virtual {p0, v8}, Lcom/logitech/harmonylink/context/EnterPinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 123
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 126
    .end local v0           #button:Landroid/widget/Button;
    :cond_0
    const v8, 0x7f070077

    invoke-virtual {p0, v8}, Lcom/logitech/harmonylink/context/EnterPinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 127
    .local v2, delete:Landroid/widget/ImageButton;
    new-instance v8, Lcom/logitech/harmonylink/context/EnterPinActivity$3;

    invoke-direct {v8, p0}, Lcom/logitech/harmonylink/context/EnterPinActivity$3;-><init>(Lcom/logitech/harmonylink/context/EnterPinActivity;)V

    invoke-virtual {v2, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v8, 0x7f070062

    invoke-virtual {p0, v8}, Lcom/logitech/harmonylink/context/EnterPinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 134
    .local v1, cancel:Landroid/widget/Button;
    invoke-virtual {v1, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 135
    new-instance v8, Lcom/logitech/harmonylink/context/EnterPinActivity$4;

    invoke-direct {v8, p0}, Lcom/logitech/harmonylink/context/EnterPinActivity$4;-><init>(Lcom/logitech/harmonylink/context/EnterPinActivity;)V

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/EnterPinActivity;->getApplication()Landroid/app/Application;

    move-result-object v6

    check-cast v6, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    .line 142
    .local v6, mainApp:Lcom/logitech/harmonylink/HarmonyRemoteApplication;
    invoke-virtual {v6}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getPairingResponseHandler()Lcom/logitech/connect/pairing/PairingResponseHandler;

    move-result-object v4

    .line 143
    .local v4, handler:Lcom/logitech/connect/pairing/PairingResponseHandler;
    invoke-virtual {v4, p0}, Lcom/logitech/connect/pairing/PairingResponseHandler;->setPinResponseObserver(Lcom/logitech/connect/pairing/PinResponseObserver;)V

    .line 144
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/EnterPinActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v8

    invoke-virtual {v8}, Lcom/logitech/harmonylink/harmony/Dom;->clearObservers()V

    .line 145
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 197
    packed-switch p1, :pswitch_data_0

    .line 211
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 199
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020006

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060063

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060064

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060065

    new-instance v2, Lcom/logitech/harmonylink/context/EnterPinActivity$5;

    invoke-direct {v2, p0}, Lcom/logitech/harmonylink/context/EnterPinActivity$5;-><init>(Lcom/logitech/harmonylink/context/EnterPinActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 150
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onDestroy()V

    .line 151
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/EnterPinActivity;->initiateCancel()V

    .line 152
    return-void
.end method

.method public onFailedPin()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/logitech/harmonylink/context/EnterPinActivity;->mEntryFields:[Landroid/widget/EditText;

    iget v1, p0, Lcom/logitech/harmonylink/context/EnterPinActivity;->mEntryFieldIndex:I

    aget-object v0, v0, v1

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/logitech/harmonylink/context/EnterPinActivity;->mLockEntry:Z

    .line 219
    invoke-direct {p0}, Lcom/logitech/harmonylink/context/EnterPinActivity;->delete()V

    .line 220
    invoke-direct {p0}, Lcom/logitech/harmonylink/context/EnterPinActivity;->delete()V

    .line 221
    invoke-direct {p0}, Lcom/logitech/harmonylink/context/EnterPinActivity;->delete()V

    .line 222
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/context/EnterPinActivity;->showDialog(I)V

    .line 223
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 226
    const v0, 0x7f060066

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 231
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/EnterPinActivity;->goToHome()V

    .line 234
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/EnterPinActivity;->finish()V

    .line 236
    return-void
.end method
