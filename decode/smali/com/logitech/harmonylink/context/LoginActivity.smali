.class public Lcom/logitech/harmonylink/context/LoginActivity;
.super Lcom/logitech/harmonylink/ui/common/BaseActivity;
.source "LoginActivity.java"

# interfaces
.implements Lcom/logitech/connect/pairing/PinResponseObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logitech/harmonylink/context/LoginActivity$OnServerSelectedListener;,
        Lcom/logitech/harmonylink/context/LoginActivity$UserAuthTask;
    }
.end annotation


# static fields
.field private static final DIALOG_ERROR:I = 0x1

.field public static final LOGINSCREEN:Ljava/lang/String; = "fromloginpage"

.field private static final MANUFACTURING_CONFIG_HASH:Ljava/lang/String; = "0x00000000"

.field public static mIsConnectSuccess:Z


# instance fields
.field public final LOG_TAG:Ljava/lang/String;

.field dialogTimeout:Ljava/lang/Runnable;

.field private mConfigHashRespHandler:Lcom/logitech/connect/client/transport/IResponseHandler;

.field private mDlgLoginStatus:Landroid/app/Dialog;

.field private mDlgStatusText:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mOkButton:Landroid/widget/Button;

.field private mOliveEmail:Ljava/lang/String;

.field private mPairingHandler:Lcom/logitech/connect/pairing/PairingResponseHandler;

.field private mPassword:Landroid/widget/EditText;

.field private mPosition:I

.field private mSyncRequiredOnPairing:Z

.field private mUser:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;-><init>()V

    .line 52
    iput v0, p0, Lcom/logitech/harmonylink/context/LoginActivity;->mPosition:I

    .line 61
    iput-boolean v0, p0, Lcom/logitech/harmonylink/context/LoginActivity;->mSyncRequiredOnPairing:Z

    .line 62
    const-class v0, Lcom/logitech/harmonylink/context/LoginActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/LoginActivity;->LOG_TAG:Ljava/lang/String;

    .line 64
    new-instance v0, Lcom/logitech/harmonylink/context/LoginActivity$1;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/context/LoginActivity$1;-><init>(Lcom/logitech/harmonylink/context/LoginActivity;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/context/LoginActivity;->mConfigHashRespHandler:Lcom/logitech/connect/client/transport/IResponseHandler;

    .line 310
    new-instance v0, Lcom/logitech/harmonylink/context/LoginActivity$7;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/context/LoginActivity$7;-><init>(Lcom/logitech/harmonylink/context/LoginActivity;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/context/LoginActivity;->dialogTimeout:Ljava/lang/Runnable;

    .line 392
    return-void
.end method

.method static synthetic access$000(Lcom/logitech/harmonylink/context/LoginActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/logitech/harmonylink/context/LoginActivity;->startOliveSyncActivity()V

    return-void
.end method

.method static synthetic access$100(Lcom/logitech/harmonylink/context/LoginActivity;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/logitech/harmonylink/context/LoginActivity;->mDlgLoginStatus:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1000()Lcom/logitech/harmonylink/HarmonyRemoteApplication;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/logitech/harmonylink/context/LoginActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/logitech/harmonylink/context/LoginActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/logitech/harmonylink/context/LoginActivity;->mOkButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/logitech/harmonylink/context/LoginActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/logitech/harmonylink/context/LoginActivity;->mDlgStatusText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/logitech/harmonylink/context/LoginActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/context/LoginActivity;->submit(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/logitech/harmonylink/context/LoginActivity;Landroid/app/Dialog;Landroid/widget/TextView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/logitech/harmonylink/context/LoginActivity;->changeMessage(Landroid/app/Dialog;Landroid/widget/TextView;I)V

    return-void
.end method

.method static synthetic access$200()Lcom/logitech/harmonylink/HarmonyRemoteApplication;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/logitech/harmonylink/context/LoginActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    return-object v0
.end method

.method static synthetic access$300(Lcom/logitech/harmonylink/context/LoginActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/logitech/harmonylink/context/LoginActivity;->mSyncRequiredOnPairing:Z

    return v0
.end method

.method static synthetic access$400(Lcom/logitech/harmonylink/context/LoginActivity;)Lcom/logitech/connect/pairing/PairingResponseHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/logitech/harmonylink/context/LoginActivity;->mPairingHandler:Lcom/logitech/connect/pairing/PairingResponseHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/logitech/harmonylink/context/LoginActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/logitech/harmonylink/context/LoginActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/logitech/harmonylink/context/LoginActivity;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/logitech/harmonylink/context/LoginActivity;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$600(Lcom/logitech/harmonylink/context/LoginActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/logitech/harmonylink/context/LoginActivity;->mUser:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/logitech/harmonylink/context/LoginActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/logitech/harmonylink/context/LoginActivity;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800()Lcom/logitech/harmonylink/HarmonyRemoteApplication;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/logitech/harmonylink/context/LoginActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    return-object v0
.end method

.method static synthetic access$902(Lcom/logitech/harmonylink/context/LoginActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/logitech/harmonylink/context/LoginActivity;->mGoToHomeWhenAuthenticated:Z

    return p1
.end method

.method private changeMessage(Landroid/app/Dialog;Landroid/widget/TextView;I)V
    .locals 2
    .parameter "dialog"
    .parameter "textView"
    .parameter "messageResourceId"

    .prologue
    .line 200
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const v0, 0x7f0700b6

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/logitech/harmonylink/context/LoginActivity;->mOkButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 204
    invoke-virtual {p0, p3}, Lcom/logitech/harmonylink/context/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 207
    return-void
.end method

.method private startOliveSyncActivity()V
    .locals 3

    .prologue
    .line 348
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 349
    .local v0, i:Landroid/content/Intent;
    const-string v1, "fromloginpage"

    const v2, 0x7f06009d

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/context/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 351
    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/context/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 352
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/context/LoginActivity;->setResult(I)V

    .line 353
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/LoginActivity;->finish()V

    .line 354
    return-void
.end method

.method private submit(Ljava/lang/String;)V
    .locals 9
    .parameter "userAuthToken"

    .prologue
    const/4 v8, 0x1

    .line 211
    if-eqz p1, :cond_0

    const-string v5, "Authentication failure"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 212
    :cond_0
    iget-object v5, p0, Lcom/logitech/harmonylink/context/LoginActivity;->mDlgLoginStatus:Landroid/app/Dialog;

    iget-object v6, p0, Lcom/logitech/harmonylink/context/LoginActivity;->mDlgStatusText:Landroid/widget/TextView;

    const v7, 0x7f06009b

    invoke-direct {p0, v5, v6, v7}, Lcom/logitech/harmonylink/context/LoginActivity;->changeMessage(Landroid/app/Dialog;Landroid/widget/TextView;I)V

    .line 249
    :goto_0
    return-void

    .line 215
    :cond_1
    invoke-static {}, Lcom/logitech/connect/ConnectClient;->getInstance()Lcom/logitech/connect/ConnectClient;

    move-result-object v5

    const-string v6, "com.logitech.remote"

    invoke-virtual {v5, v6, v8}, Lcom/logitech/connect/ConnectClient;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 218
    .local v2, mPref:Landroid/content/SharedPreferences;
    const-string v5, "userAuthToken"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 219
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/logitech/harmonylink/context/LoginActivity;->mSyncRequiredOnPairing:Z

    .line 224
    :goto_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "userAuthToken"

    invoke-interface {v5, v6, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 226
    :try_start_0
    iget v5, p0, Lcom/logitech/harmonylink/context/LoginActivity;->mPosition:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    .line 227
    invoke-static {}, Lcom/logitech/connect/ConnectClient;->getInstance()Lcom/logitech/connect/ConnectClient;

    move-result-object v5

    invoke-virtual {v5}, Lcom/logitech/connect/ConnectClient;->getTargets()Ljava/util/ArrayList;

    move-result-object v4

    .line 228
    .local v4, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/connect/Target;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/logitech/connect/Target;

    .line 229
    .local v3, oliveTarget:Lcom/logitech/connect/Target;
    invoke-virtual {v3}, Lcom/logitech/connect/Target;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/logitech/harmonylink/context/LoginActivity;->mOliveEmail:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 230
    iget-object v5, p0, Lcom/logitech/harmonylink/context/LoginActivity;->mPairingHandler:Lcom/logitech/connect/pairing/PairingResponseHandler;

    new-instance v6, Lcom/logitech/harmonylink/context/LoginActivity$4;

    invoke-direct {v6, p0}, Lcom/logitech/harmonylink/context/LoginActivity$4;-><init>(Lcom/logitech/harmonylink/context/LoginActivity;)V

    invoke-virtual {v5, v3, v6, p1}, Lcom/logitech/connect/pairing/PairingResponseHandler;->startPairingOliveOnPasswordChange(Lcom/logitech/connect/Target;Ljava/lang/Runnable;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 243
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #oliveTarget:Lcom/logitech/connect/Target;
    .end local v4           #targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/connect/Target;>;"
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 244
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 246
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    :goto_3
    iget-object v5, p0, Lcom/logitech/harmonylink/context/LoginActivity;->mPairingHandler:Lcom/logitech/connect/pairing/PairingResponseHandler;

    invoke-virtual {v5, p0}, Lcom/logitech/connect/pairing/PairingResponseHandler;->setPinResponseObserver(Lcom/logitech/connect/pairing/PinResponseObserver;)V

    .line 247
    invoke-virtual {p0, v8}, Lcom/logitech/harmonylink/context/LoginActivity;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_0

    .line 221
    :cond_4
    iput-boolean v8, p0, Lcom/logitech/harmonylink/context/LoginActivity;->mSyncRequiredOnPairing:Z

    goto :goto_1

    .line 238
    :cond_5
    :try_start_1
    iget-object v5, p0, Lcom/logitech/harmonylink/context/LoginActivity;->mPairingHandler:Lcom/logitech/connect/pairing/PairingResponseHandler;

    iget v6, p0, Lcom/logitech/harmonylink/context/LoginActivity;->mPosition:I

    new-instance v7, Lcom/logitech/harmonylink/context/LoginActivity$5;

    invoke-direct {v7, p0}, Lcom/logitech/harmonylink/context/LoginActivity$5;-><init>(Lcom/logitech/harmonylink/context/LoginActivity;)V

    invoke-virtual {v5, v6, v7, p1}, Lcom/logitech/connect/pairing/PairingResponseHandler;->startPairingOlive(ILjava/lang/Runnable;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 357
    iget-object v0, p0, Lcom/logitech/harmonylink/context/LoginActivity;->mDlgLoginStatus:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/logitech/harmonylink/context/LoginActivity;->mDlgLoginStatus:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 360
    :cond_0
    const-string v0, "cancel"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 362
    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/context/LoginActivity;->setResult(I)V

    .line 363
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/LoginActivity;->finish()V

    .line 364
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/context/LoginActivity;->requestWindowFeature(I)Z

    .line 137
    const v4, 0x7f030035

    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/context/LoginActivity;->setContentView(I)V

    .line 138
    const v4, 0x7f0700b0

    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/context/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 140
    .local v2, loginLayout:Landroid/widget/RelativeLayout;
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "target"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 141
    .local v0, b:Landroid/os/Bundle;
    const-string v4, "position"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/logitech/harmonylink/context/LoginActivity;->mPosition:I

    .line 142
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 143
    const-string v4, "targetname"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/logitech/harmonylink/context/LoginActivity;->mOliveEmail:Ljava/lang/String;

    .line 144
    const v4, 0x7f0700b2

    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/context/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/logitech/harmonylink/context/LoginActivity;->mUser:Landroid/widget/TextView;

    .line 145
    iget-object v4, p0, Lcom/logitech/harmonylink/context/LoginActivity;->mUser:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/logitech/harmonylink/context/LoginActivity;->mOliveEmail:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    const v4, 0x7f0700b3

    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/context/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/logitech/harmonylink/context/LoginActivity;->mPassword:Landroid/widget/EditText;

    .line 149
    const v4, 0x7f0700b4

    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/context/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 150
    .local v1, loginButton:Landroid/widget/Button;
    new-instance v4, Landroid/app/Dialog;

    const v5, 0x7f0a0003

    invoke-direct {v4, p0, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/logitech/harmonylink/context/LoginActivity;->mDlgLoginStatus:Landroid/app/Dialog;

    .line 152
    iget-object v4, p0, Lcom/logitech/harmonylink/context/LoginActivity;->mDlgLoginStatus:Landroid/app/Dialog;

    const v5, 0x7f030036

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 154
    iget-object v4, p0, Lcom/logitech/harmonylink/context/LoginActivity;->mDlgLoginStatus:Landroid/app/Dialog;

    const v5, 0x7f0700b5

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/logitech/harmonylink/context/LoginActivity;->mDlgStatusText:Landroid/widget/TextView;

    .line 155
    iget-object v4, p0, Lcom/logitech/harmonylink/context/LoginActivity;->mDlgLoginStatus:Landroid/app/Dialog;

    const v5, 0x7f0700b7

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/logitech/harmonylink/context/LoginActivity;->mOkButton:Landroid/widget/Button;

    .line 156
    iget-object v4, p0, Lcom/logitech/harmonylink/context/LoginActivity;->mOkButton:Landroid/widget/Button;

    new-instance v5, Lcom/logitech/harmonylink/context/LoginActivity$2;

    invoke-direct {v5, p0}, Lcom/logitech/harmonylink/context/LoginActivity$2;-><init>(Lcom/logitech/harmonylink/context/LoginActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    new-instance v4, Lcom/logitech/harmonylink/context/LoginActivity$3;

    invoke-direct {v4, p0}, Lcom/logitech/harmonylink/context/LoginActivity$3;-><init>(Lcom/logitech/harmonylink/context/LoginActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/LoginActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    .line 184
    .local v3, mainApp:Lcom/logitech/harmonylink/HarmonyRemoteApplication;
    invoke-virtual {v3}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getPairingResponseHandler()Lcom/logitech/connect/pairing/PairingResponseHandler;

    move-result-object v4

    iput-object v4, p0, Lcom/logitech/harmonylink/context/LoginActivity;->mPairingHandler:Lcom/logitech/connect/pairing/PairingResponseHandler;

    .line 186
    const/high16 v4, 0x7f06

    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/context/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->setDiscoveryServiceUrl(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/LoginActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v4

    invoke-virtual {v4}, Lcom/logitech/harmonylink/harmony/Dom;->clearObservers()V

    .line 197
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 252
    packed-switch p1, :pswitch_data_0

    .line 266
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 254
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

    new-instance v2, Lcom/logitech/harmonylink/context/LoginActivity$6;

    invoke-direct {v2, p0}, Lcom/logitech/harmonylink/context/LoginActivity$6;-><init>(Lcom/logitech/harmonylink/context/LoginActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 252
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 369
    const/4 v0, 0x0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/logitech/harmonylink/context/LoginActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/logitech/harmonylink/context/LoginActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/logitech/harmonylink/context/LoginActivity;->dialogTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/LoginActivity;->mHandler:Landroid/os/Handler;

    .line 327
    :cond_0
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onDestroy()V

    .line 329
    return-void
.end method

.method public onFailedPin()V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/logitech/harmonylink/context/LoginActivity;->mDlgLoginStatus:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/logitech/harmonylink/context/LoginActivity;->mDlgLoginStatus:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 336
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/context/LoginActivity;->showDialog(I)V

    .line 337
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 374
    const/4 v3, 0x4

    if-ne p1, v3, :cond_2

    .line 375
    iget-object v3, p0, Lcom/logitech/harmonylink/context/LoginActivity;->mPairingHandler:Lcom/logitech/connect/pairing/PairingResponseHandler;

    invoke-virtual {v3}, Lcom/logitech/connect/pairing/PairingResponseHandler;->cancel()V

    .line 377
    sget-object v3, Lcom/logitech/connect/ConnectClient;->sInstance:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v3}, Lcom/logitech/connect/ConnectClient;->getTargets()Ljava/util/ArrayList;

    move-result-object v2

    .line 378
    .local v2, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/connect/Target;>;"
    if-eqz v2, :cond_2

    .line 379
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/logitech/connect/Target;

    .line 380
    .local v1, target:Lcom/logitech/connect/Target;
    invoke-virtual {v1}, Lcom/logitech/connect/Target;->getConnectionStatus()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    invoke-virtual {v1}, Lcom/logitech/connect/Target;->getConnectionStatus()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 382
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/logitech/connect/Target;->setConnectionStatus(I)V

    goto :goto_0

    .line 389
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #target:Lcom/logitech/connect/Target;
    .end local v2           #targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/connect/Target;>;"
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    return v3
.end method

.method public onSuccess()V
    .locals 3

    .prologue
    .line 340
    const/4 v1, 0x1

    sput-boolean v1, Lcom/logitech/harmonylink/context/LoginActivity;->mIsConnectSuccess:Z

    .line 341
    invoke-static {p0}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getSharedPrefs(Landroid/content/Context;)Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    move-result-object v0

    .line 342
    .local v0, prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    const-string v1, "connectedOliveEmail"

    iget-object v2, p0, Lcom/logitech/harmonylink/context/LoginActivity;->mOliveEmail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/LoginActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v1

    iget-object v2, p0, Lcom/logitech/harmonylink/context/LoginActivity;->mConfigHashRespHandler:Lcom/logitech/connect/client/transport/IResponseHandler;

    invoke-virtual {v1, v2}, Lcom/logitech/harmonylink/harmony/Dom;->hashCheckForOlive(Lcom/logitech/connect/client/transport/IResponseHandler;)V

    .line 345
    return-void
.end method
