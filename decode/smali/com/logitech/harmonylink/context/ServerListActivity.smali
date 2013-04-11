.class public Lcom/logitech/harmonylink/context/ServerListActivity;
.super Lcom/logitech/harmonylink/ui/common/BaseMenuActivity;
.source "ServerListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logitech/harmonylink/context/ServerListActivity$OnItemClickListener;,
        Lcom/logitech/harmonylink/context/ServerListActivity$MyAdapter;
    }
.end annotation


# static fields
.field public static final CONNECTION_HELP_FINSH_RESULT:I = 0x66

.field public static final CONNECTION_HELP_REQUEST:I = 0x66

.field public static final SOURCEUNPAIR:Ljava/lang/String; = "fromunpair"

.field private static final TIMEOUT_IN_MILLIS:J = 0x7530L

.field public static fwVersion:Ljava/lang/String;


# instance fields
.field mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/logitech/connect/Target;",
            ">;"
        }
    .end annotation
.end field

.field mButtonRescan:Landroid/widget/Button;

.field private mConflictingTarget:Lcom/logitech/connect/Target;

.field mConnectClient:Landroid/os/IBinder;

.field private final mConnectivityObserver:Lcom/logitech/connect/IConnectivityObserver;

.field private mGlobalResonseObserver:Lcom/logitech/connect/IGlobalResponseObserver;

.field mIsVisible:Z

.field mListView:Landroid/widget/ListView;

.field private final mObserver:Lcom/logitech/connect/IConnectClientObserver;

.field mSSIDView:Landroid/widget/TextView;

.field private final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Lcom/logitech/harmonylink/ui/common/BaseMenuActivity;-><init>()V

    .line 51
    iput-object v1, p0, Lcom/logitech/harmonylink/context/ServerListActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 52
    iput-object v1, p0, Lcom/logitech/harmonylink/context/ServerListActivity;->mListView:Landroid/widget/ListView;

    .line 53
    iput-object v1, p0, Lcom/logitech/harmonylink/context/ServerListActivity;->mConnectClient:Landroid/os/IBinder;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/logitech/harmonylink/context/ServerListActivity;->mIsVisible:Z

    .line 58
    iput-object v1, p0, Lcom/logitech/harmonylink/context/ServerListActivity;->mConflictingTarget:Lcom/logitech/connect/Target;

    .line 61
    new-instance v0, Lcom/logitech/harmonylink/context/ServerListActivity$1;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/context/ServerListActivity$1;-><init>(Lcom/logitech/harmonylink/context/ServerListActivity;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/context/ServerListActivity;->mObserver:Lcom/logitech/connect/IConnectClientObserver;

    .line 70
    new-instance v0, Lcom/logitech/harmonylink/context/ServerListActivity$2;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/context/ServerListActivity$2;-><init>(Lcom/logitech/harmonylink/context/ServerListActivity;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/context/ServerListActivity;->mConnectivityObserver:Lcom/logitech/connect/IConnectivityObserver;

    .line 93
    new-instance v0, Lcom/logitech/harmonylink/context/ServerListActivity$3;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/context/ServerListActivity$3;-><init>(Lcom/logitech/harmonylink/context/ServerListActivity;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/context/ServerListActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 399
    new-instance v0, Lcom/logitech/harmonylink/context/ServerListActivity$8;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/context/ServerListActivity$8;-><init>(Lcom/logitech/harmonylink/context/ServerListActivity;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/context/ServerListActivity;->mGlobalResonseObserver:Lcom/logitech/connect/IGlobalResponseObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/logitech/harmonylink/context/ServerListActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/context/ServerListActivity;->updateWith(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$100(Lcom/logitech/harmonylink/context/ServerListActivity;)Lcom/logitech/connect/IConnectClientObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/logitech/harmonylink/context/ServerListActivity;->mObserver:Lcom/logitech/connect/IConnectClientObserver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/logitech/harmonylink/context/ServerListActivity;)Lcom/logitech/connect/IConnectivityObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/logitech/harmonylink/context/ServerListActivity;->mConnectivityObserver:Lcom/logitech/connect/IConnectivityObserver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/logitech/harmonylink/context/ServerListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/logitech/harmonylink/context/ServerListActivity;->doRescan()V

    return-void
.end method

.method static synthetic access$400()Lcom/logitech/harmonylink/HarmonyRemoteApplication;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/logitech/harmonylink/context/ServerListActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    return-object v0
.end method

.method static synthetic access$500(Lcom/logitech/harmonylink/context/ServerListActivity;)Lcom/logitech/connect/IGlobalResponseObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/logitech/harmonylink/context/ServerListActivity;->mGlobalResonseObserver:Lcom/logitech/connect/IGlobalResponseObserver;

    return-object v0
.end method

.method static synthetic access$600()Lcom/logitech/harmonylink/HarmonyRemoteApplication;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/logitech/harmonylink/context/ServerListActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    return-object v0
.end method

.method private doRescan()V
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lcom/logitech/connect/ConnectClient;->sInstance:Lcom/logitech/connect/ConnectClient;

    .line 160
    .local v0, connectClient:Lcom/logitech/connect/ConnectClient;
    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0}, Lcom/logitech/connect/ConnectClient;->disconnect()V

    .line 162
    invoke-virtual {v0}, Lcom/logitech/connect/ConnectClient;->clearTargets()V

    .line 164
    :cond_0
    return-void
.end method

.method private updateWith(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/connect/Target;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/connect/Target;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 218
    .local v0, hashServerCheck:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/logitech/harmonylink/context/ServerListActivity;->mConflictingTarget:Lcom/logitech/connect/Target;

    if-nez v3, :cond_1

    .line 219
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/logitech/connect/Target;

    .line 220
    .local v2, targetCheck:Lcom/logitech/connect/Target;
    invoke-virtual {v2}, Lcom/logitech/connect/Target;->getGuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 221
    invoke-virtual {v2}, Lcom/logitech/connect/Target;->getGuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 223
    :cond_0
    iput-object v2, p0, Lcom/logitech/harmonylink/context/ServerListActivity;->mConflictingTarget:Lcom/logitech/connect/Target;

    .line 224
    invoke-direct {p0}, Lcom/logitech/harmonylink/context/ServerListActivity;->doRescan()V

    .line 236
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #targetCheck:Lcom/logitech/connect/Target;
    :goto_1
    return-void

    .line 230
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/logitech/harmonylink/context/ServerListActivity;->mConflictingTarget:Lcom/logitech/connect/Target;

    .line 232
    const v3, 0x7f070035

    invoke-virtual {p0, v3}, Lcom/logitech/harmonylink/context/ServerListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    new-instance v3, Lcom/logitech/harmonylink/context/ServerListActivity$MyAdapter;

    const v4, 0x7f030052

    invoke-direct {v3, p0, p0, v4, p1}, Lcom/logitech/harmonylink/context/ServerListActivity$MyAdapter;-><init>(Lcom/logitech/harmonylink/context/ServerListActivity;Landroid/content/Context;ILjava/util/List;)V

    iput-object v3, p0, Lcom/logitech/harmonylink/context/ServerListActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 234
    iget-object v3, p0, Lcom/logitech/harmonylink/context/ServerListActivity;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/logitech/harmonylink/context/ServerListActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 235
    iget-object v3, p0, Lcom/logitech/harmonylink/context/ServerListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->invalidate()V

    goto :goto_1
.end method


# virtual methods
.method public ChangeSSID()V
    .locals 3

    .prologue
    .line 435
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/context/ServerListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 437
    .local v0, wifi:Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 439
    iget-object v1, p0, Lcom/logitech/harmonylink/context/ServerListActivity;->mSSIDView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    :goto_0
    return-void

    .line 443
    :cond_0
    iget-object v1, p0, Lcom/logitech/harmonylink/context/ServerListActivity;->mSSIDView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    sget-object v1, Lcom/logitech/connect/ConnectClient;->sInstance:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/logitech/connect/ConnectClient;->clearTargets()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 254
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 255
    invoke-static {}, Lcom/logitech/connect/ConnectClient;->getInstance()Lcom/logitech/connect/ConnectClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    sget-object v0, Lcom/logitech/connect/ConnectClient;->sInstance:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/logitech/connect/ConnectClient;->clearTargets()V

    .line 258
    :cond_0
    const/4 v0, 0x7

    if-ne p2, v0, :cond_1

    .line 259
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/ServerListActivity;->finish()V

    .line 261
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 109
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseMenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/context/ServerListActivity;->requestWindowFeature(I)Z

    .line 112
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/context/ServerListActivity;->setContentView(I)V

    .line 114
    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/context/ServerListActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 116
    const v0, 0x7f070030

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/context/ServerListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/logitech/harmonylink/context/ServerListActivity;->mSSIDView:Landroid/widget/TextView;

    .line 117
    const v0, 0x7f070034

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/context/ServerListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/logitech/harmonylink/context/ServerListActivity;->mListView:Landroid/widget/ListView;

    .line 119
    const v0, 0x7f070038

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/context/ServerListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/logitech/harmonylink/context/ServerListActivity;->mButtonRescan:Landroid/widget/Button;

    .line 121
    iput-boolean v2, p0, Lcom/logitech/harmonylink/context/ServerListActivity;->mGoToHomeWhenAuthenticated:Z

    .line 122
    iget-object v0, p0, Lcom/logitech/harmonylink/context/ServerListActivity;->mButtonRescan:Landroid/widget/Button;

    new-instance v1, Lcom/logitech/harmonylink/context/ServerListActivity$4;

    invoke-direct {v1, p0}, Lcom/logitech/harmonylink/context/ServerListActivity$4;-><init>(Lcom/logitech/harmonylink/context/ServerListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/logitech/harmonylink/context/ServerListActivity;->mButtonRescan:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLongClickable(Z)V

    .line 129
    iget-object v0, p0, Lcom/logitech/harmonylink/context/ServerListActivity;->mButtonRescan:Landroid/widget/Button;

    new-instance v1, Lcom/logitech/harmonylink/context/ServerListActivity$5;

    invoke-direct {v1, p0}, Lcom/logitech/harmonylink/context/ServerListActivity$5;-><init>(Lcom/logitech/harmonylink/context/ServerListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 138
    sget-object v0, Lcom/logitech/harmonylink/context/ServerListActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    new-instance v1, Lcom/logitech/harmonylink/context/ServerListActivity$6;

    invoke-direct {v1, p0}, Lcom/logitech/harmonylink/context/ServerListActivity$6;-><init>(Lcom/logitech/harmonylink/context/ServerListActivity;)V

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->addOneShotServiceStartObserver(Ljava/lang/Runnable;)V

    .line 151
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 168
    sget-object v0, Lcom/logitech/harmonylink/context/ServerListActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v0, v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    iget-object v1, p0, Lcom/logitech/harmonylink/context/ServerListActivity;->mObserver:Lcom/logitech/connect/IConnectClientObserver;

    invoke-virtual {v0, v1}, Lcom/logitech/connect/ConnectClient;->removeObserver(Lcom/logitech/connect/IConnectClientObserver;)V

    .line 169
    sget-object v0, Lcom/logitech/harmonylink/context/ServerListActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v0, v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    iget-object v1, p0, Lcom/logitech/harmonylink/context/ServerListActivity;->mGlobalResonseObserver:Lcom/logitech/connect/IGlobalResponseObserver;

    invoke-virtual {v0, v1}, Lcom/logitech/connect/ConnectClient;->removeGlobalResponseObserver(Lcom/logitech/connect/IGlobalResponseObserver;)V

    .line 170
    sget-object v0, Lcom/logitech/harmonylink/context/ServerListActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v0, v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/logitech/connect/ConnectClient;->stopDiscoveryProbe()V

    .line 171
    iget-object v0, p0, Lcom/logitech/harmonylink/context/ServerListActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/context/ServerListActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 172
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseMenuActivity;->onDestroy()V

    .line 173
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 453
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 454
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/ServerListActivity;->finish()V

    .line 455
    const/4 v0, 0x1

    .line 458
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/logitech/harmonylink/ui/common/BaseMenuActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 199
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseMenuActivity;->onPause()V

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/logitech/harmonylink/context/ServerListActivity;->mIsVisible:Z

    .line 201
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 179
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseMenuActivity;->onResume()V

    .line 180
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/ServerListActivity;->ChangeSSID()V

    .line 182
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/logitech/connect/ConnectClient;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/logitech/harmonylink/context/ServerListActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/logitech/harmonylink/context/ServerListActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 185
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/logitech/harmonylink/context/ServerListActivity;->mIsVisible:Z

    .line 188
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/logitech/harmonylink/context/ServerListActivity$7;

    invoke-direct {v2, p0}, Lcom/logitech/harmonylink/context/ServerListActivity$7;-><init>(Lcom/logitech/harmonylink/context/ServerListActivity;)V

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 195
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 206
    sget-object v0, Lcom/logitech/harmonylink/context/ServerListActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v0, v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    iget-object v1, p0, Lcom/logitech/harmonylink/context/ServerListActivity;->mConnectivityObserver:Lcom/logitech/connect/IConnectivityObserver;

    invoke-virtual {v0, v1}, Lcom/logitech/connect/ConnectClient;->removeConnectivityObserver(Lcom/logitech/connect/IConnectivityObserver;)V

    .line 207
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseMenuActivity;->onStop()V

    .line 208
    return-void
.end method

.method protected skip()V
    .locals 1

    .prologue
    .line 240
    const-class v0, Lcom/logitech/harmonylink/context/EnterPinActivity;

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/context/ServerListActivity;->openActivityForResult(Ljava/lang/Class;)V

    .line 241
    return-void
.end method

.method timeOut()V
    .locals 2

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/context/ServerListActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 246
    iget-object v0, p0, Lcom/logitech/harmonylink/context/ServerListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/logitech/harmonylink/context/ServerListActivity;->mIsVisible:Z

    if-eqz v0, :cond_0

    .line 247
    const-class v0, Lcom/logitech/harmonylink/context/NoConnectionActivity;

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/context/ServerListActivity;->openActivityForResultNoHistory(Ljava/lang/Class;)V

    .line 249
    :cond_0
    return-void
.end method
