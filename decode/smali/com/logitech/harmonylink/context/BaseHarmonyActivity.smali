.class public abstract Lcom/logitech/harmonylink/context/BaseHarmonyActivity;
.super Lcom/logitech/harmonylink/ui/common/BaseActivity;
.source "BaseHarmonyActivity.java"

# interfaces
.implements Lcom/logitech/harmonylink/harmony/IDomObserver;
.implements Lcom/logitech/harmonylink/view/widget/IButtonPressedObserver;
.implements Lcom/logitech/harmonylink/common/ISyncStateObserver;


# static fields
.field private static final DIALOG_NOACTIVITY:I = 0x2

.field private static final DIALOG_POWEROFF_CONFIRMATION:I = 0x1


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field private mActivityChangedReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field protected mCurrentActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

.field protected mDom:Lcom/logitech/harmonylink/harmony/Dom;

.field private mHelpBtn:Landroid/widget/Button;

.field private mHelpShadeButton:Landroid/widget/Button;

.field protected mPowerBtn:Landroid/widget/Button;

.field protected mPrimaryControlInflator:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;

.field protected mTab:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;-><init>()V

    .line 41
    const-class v0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private showSyncPowerOffDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 233
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020006

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060026

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Ok"

    new-instance v2, Lcom/logitech/harmonylink/context/BaseHarmonyActivity$6;

    invoke-direct {v2, p0}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity$6;-><init>(Lcom/logitech/harmonylink/context/BaseHarmonyActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected createPoweroffConfirmationDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 247
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 249
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f020006

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f06002e

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Yes"

    new-instance v3, Lcom/logitech/harmonylink/context/BaseHarmonyActivity$8;

    invoke-direct {v3, p0}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity$8;-><init>(Lcom/logitech/harmonylink/context/BaseHarmonyActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "No"

    new-instance v3, Lcom/logitech/harmonylink/context/BaseHarmonyActivity$7;

    invoke-direct {v3, p0}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity$7;-><init>(Lcom/logitech/harmonylink/context/BaseHarmonyActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 273
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public getCurrentActivity()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->mCurrentActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    return-object v0
.end method

.method public onButtonPressed(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 202
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 198
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 199
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    .line 62
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    sget-object v7, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v7}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v7

    iput-object v7, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    .line 64
    const v7, 0x7f03005a

    invoke-virtual {p0, v7}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->setContentView(I)V

    .line 65
    iget-object v7, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v7}, Lcom/logitech/harmonylink/harmony/Dom;->getCurrentActivity()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v7

    iput-object v7, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->mCurrentActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    .line 66
    const/4 v6, 0x0

    .line 68
    .local v6, viewingActivity:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 69
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 70
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 72
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 73
    const-string v7, "currentActivity"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 74
    if-eqz v6, :cond_0

    .line 75
    iget-object v7, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v7, v6}, Lcom/logitech/harmonylink/harmony/Dom;->setCurrentViewingActivity(Ljava/lang/String;)V

    .line 78
    :cond_0
    const-string v7, "tab"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->mTab:Ljava/lang/String;

    .line 86
    .end local v1           #extras:Landroid/os/Bundle;
    :cond_1
    iget-object v7, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->mCurrentActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    if-nez v7, :cond_2

    if-eqz v6, :cond_2

    .line 87
    iget-object v7, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v7}, Lcom/logitech/harmonylink/harmony/Dom;->getActivities()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;

    move-result-object v0

    .line 88
    .local v0, activities:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;
    iget-object v7, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v7}, Lcom/logitech/harmonylink/harmony/Dom;->getActivities()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 89
    invoke-virtual {v0, v6}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;->find(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v7

    iput-object v7, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->mCurrentActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    .line 95
    .end local v0           #activities:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;
    :cond_2
    iget-object v7, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->mCurrentActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    if-eqz v7, :cond_5

    .line 96
    new-instance v7, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;

    iget-object v8, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->mCurrentActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    invoke-direct {v7, v8}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;-><init>(Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;)V

    iput-object v7, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->mPrimaryControlInflator:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;

    .line 97
    iget-object v7, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->mPrimaryControlInflator:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;

    iget-object v8, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v7, v8}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->setDom(Lcom/logitech/harmonylink/harmony/Dom;)V

    .line 99
    const v7, 0x7f0700da

    invoke-virtual {p0, v7}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->mPowerBtn:Landroid/widget/Button;

    .line 100
    const v7, 0x7f070136

    invoke-virtual {p0, v7}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->mHelpBtn:Landroid/widget/Button;

    .line 102
    iget-object v7, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v7}, Lcom/logitech/harmonylink/harmony/Dom;->clearActivityStartObserver()V

    .line 104
    sget-object v7, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v7}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iput-object v7, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->mContext:Landroid/content/Context;

    .line 105
    sget-object v7, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v7, v7, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/logitech/connect/ConnectClient;->setKeepAlive(Z)V

    .line 107
    iget-object v7, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->mPowerBtn:Landroid/widget/Button;

    new-instance v8, Lcom/logitech/harmonylink/context/BaseHarmonyActivity$1;

    invoke-direct {v8, p0}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity$1;-><init>(Lcom/logitech/harmonylink/context/BaseHarmonyActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v7, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->mHelpBtn:Landroid/widget/Button;

    new-instance v8, Lcom/logitech/harmonylink/context/BaseHarmonyActivity$2;

    invoke-direct {v8, p0}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity$2;-><init>(Lcom/logitech/harmonylink/context/BaseHarmonyActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    invoke-static {p0}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getSharedPrefs(Landroid/content/Context;)Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    move-result-object v5

    .line 124
    .local v5, prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    const-string v7, "firstTimeActivityStart"

    invoke-virtual {v5, v7, v9}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getBooleanWithName(Ljava/lang/String;Z)Z

    move-result v3

    .line 127
    .local v3, isActivityHelpShadeDisplayed:Z
    if-nez v3, :cond_3

    .line 128
    new-instance v4, Landroid/app/Dialog;

    const v7, 0x7f0a0005

    invoke-direct {v4, p0, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 129
    .local v4, mDlgHelp:Landroid/app/Dialog;
    sget-object v7, Lcom/logitech/connect/ConnectClient;->sInstance:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v7}, Lcom/logitech/connect/ConnectClient;->getHubId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "82"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 131
    const/high16 v7, 0x7f03

    invoke-virtual {v4, v7}, Landroid/app/Dialog;->setContentView(I)V

    .line 132
    const v7, 0x7f07000d

    invoke-virtual {v4, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->mHelpShadeButton:Landroid/widget/Button;

    .line 138
    :goto_0
    invoke-virtual {v4, v9}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 139
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 141
    new-instance v7, Lcom/logitech/harmonylink/context/BaseHarmonyActivity$3;

    invoke-direct {v7, p0, v5, v4}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity$3;-><init>(Lcom/logitech/harmonylink/context/BaseHarmonyActivity;Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;Landroid/app/Dialog;)V

    invoke-virtual {v4, v7}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 150
    new-instance v7, Lcom/logitech/harmonylink/context/BaseHarmonyActivity$4;

    invoke-direct {v7, p0, v4}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity$4;-><init>(Lcom/logitech/harmonylink/context/BaseHarmonyActivity;Landroid/app/Dialog;)V

    invoke-virtual {v4, v7}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 163
    iget-object v7, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->mHelpShadeButton:Landroid/widget/Button;

    new-instance v8, Lcom/logitech/harmonylink/context/BaseHarmonyActivity$5;

    invoke-direct {v8, p0, v5, v4}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity$5;-><init>(Lcom/logitech/harmonylink/context/BaseHarmonyActivity;Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;Landroid/app/Dialog;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    .end local v3           #isActivityHelpShadeDisplayed:Z
    .end local v4           #mDlgHelp:Landroid/app/Dialog;
    .end local v5           #prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    :cond_3
    :goto_1
    return-void

    .line 134
    .restart local v3       #isActivityHelpShadeDisplayed:Z
    .restart local v4       #mDlgHelp:Landroid/app/Dialog;
    .restart local v5       #prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    :cond_4
    const v7, 0x7f030041

    invoke-virtual {v4, v7}, Landroid/app/Dialog;->setContentView(I)V

    .line 135
    const v7, 0x7f0700d2

    invoke-virtual {v4, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->mHelpShadeButton:Landroid/widget/Button;

    goto :goto_0

    .line 173
    .end local v3           #isActivityHelpShadeDisplayed:Z
    .end local v4           #mDlgHelp:Landroid/app/Dialog;
    .end local v5           #prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    :cond_5
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->showDialog(I)V

    goto :goto_1
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 277
    packed-switch p1, :pswitch_data_0

    .line 285
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 279
    :pswitch_0
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->createPoweroffConfirmationDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 282
    :pswitch_1
    invoke-direct {p0}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->showSyncPowerOffDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 277
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 366
    sget-object v0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v0, v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/logitech/connect/ConnectClient;->setKeepAlive(Z)V

    .line 367
    sget-object v0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v0, p0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->removeSyncStateObserver(Lcom/logitech/harmonylink/common/ISyncStateObserver;)V

    .line 368
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/logitech/harmonylink/harmony/Dom;->removeObserver(Lcom/logitech/harmonylink/harmony/IDomObserver;)V

    .line 370
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onDestroy()V

    .line 371
    return-void
.end method

.method public onDomUpdated(Ljava/lang/Class;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, hint:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v0, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    if-ne p1, v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->finish()V

    .line 193
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 209
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v2}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getConnectClient()Lcom/logitech/connect/ConnectClient;

    move-result-object v0

    .line 211
    .local v0, client:Lcom/logitech/connect/ConnectClient;
    invoke-virtual {v0}, Lcom/logitech/connect/ConnectClient;->getHubId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "82"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 215
    .local v1, openActivityIntent:Landroid/content/Intent;
    const/high16 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 217
    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->startActivity(Landroid/content/Intent;)V

    .line 221
    .end local v0           #client:Lcom/logitech/connect/ConnectClient;
    .end local v1           #openActivityIntent:Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 304
    new-instance v3, Lcom/logitech/harmonylink/context/BaseHarmonyActivity$9;

    invoke-direct {v3, p0}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity$9;-><init>(Lcom/logitech/harmonylink/context/BaseHarmonyActivity;)V

    iput-object v3, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->mActivityChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 326
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 327
    .local v0, activityChangeIntentFilter:Landroid/content/IntentFilter;
    const-string v3, "com.logitech.harmonylink.ACTIVITY_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 330
    iget-object v3, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->mActivityChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 341
    iget-object v3, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/harmony/Dom;->getCurrentActivity()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v1

    .line 342
    .local v1, currentActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    if-eqz v1, :cond_2

    .line 343
    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getId()Ljava/lang/String;

    move-result-object v2

    .line 344
    .local v2, currentActivityId:Ljava/lang/String;
    iget-object v3, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/harmony/Dom;->getCurrentViewingActivity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 345
    const-string v3, "-1"

    if-ne v2, v3, :cond_1

    .line 346
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->startOneTouch()V

    .line 355
    .end local v2           #currentActivityId:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onResume()V

    .line 356
    return-void

    .line 348
    .restart local v2       #currentActivityId:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->reloadControls()V

    goto :goto_0

    .line 352
    .end local v2           #currentActivityId:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->startOneTouch()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->mActivityChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 361
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onStop()V

    .line 362
    return-void
.end method

.method public onSyncComplete()V
    .locals 2

    .prologue
    .line 225
    const v0, 0x7f060026

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->showAlertDialog(Ljava/lang/String;Z)V

    .line 226
    return-void
.end method

.method public onSyncStateChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "syncState"

    .prologue
    .line 230
    return-void
.end method

.method protected reloadControls()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 184
    iget-object v1, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/Dom;->getCurrentActivity()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getName()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, currentActivityName:Ljava/lang/String;
    const v1, 0x7f060023

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->showAlertDialog(Ljava/lang/String;Z)V

    .line 188
    return-void
.end method

.method public setCurrentActivity(Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;)V
    .locals 0
    .parameter "currentActivity"

    .prologue
    .line 294
    iput-object p1, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->mCurrentActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    .line 295
    return-void
.end method

.method public startOneTouch()V
    .locals 2

    .prologue
    .line 178
    sget-object v0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v0, v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mLastActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;

    instance-of v0, v0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;

    if-eqz v0, :cond_0

    .line 179
    const v0, 0x7f060024

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->showAlertDialog(Ljava/lang/String;Z)V

    .line 181
    :cond_0
    return-void
.end method
