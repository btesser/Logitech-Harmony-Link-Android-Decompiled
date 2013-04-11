.class public Lcom/logitech/harmonylink/devtest/MainListActivity;
.super Lcom/logitech/harmonylink/ui/common/BaseActivity;
.source "MainListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final CLASSES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final CLASS_NAMES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Up Time"

    aput-object v1, v0, v3

    const-string v1, "Open API Server List"

    aput-object v1, v0, v4

    const-string v1, "EnterPinActivity"

    aput-object v1, v0, v5

    const-string v1, "HomeActivity"

    aput-object v1, v0, v6

    const-string v1, "PreferenceActivity"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "EnterIPActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "DevicesActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "DPadActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ContentProvider"

    aput-object v2, v0, v1

    sput-object v0, Lcom/logitech/harmonylink/devtest/MainListActivity;->CLASS_NAMES:[Ljava/lang/String;

    .line 42
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/logitech/harmonylink/context/MouseSensitivityActivity;

    aput-object v1, v0, v3

    const-class v1, Lcom/logitech/harmonylink/context/ServerListActivity;

    aput-object v1, v0, v4

    const-class v1, Lcom/logitech/harmonylink/context/EnterPinActivity;

    aput-object v1, v0, v5

    const-class v1, Lcom/logitech/harmonylink/devtest/HomeActivity;

    aput-object v1, v0, v6

    const-class v1, Lcom/logitech/harmonylink/devtest/PreferenceActivity;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-class v2, Lcom/logitech/harmonylink/devtest/EnterIPActivity;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/logitech/harmonylink/context/DevicesActivity;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/logitech/harmonylink/context/DPadActivity;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/logitech/harmonylink/devtest/ContentProviderTestActivity;

    aput-object v2, v0, v1

    sput-object v0, Lcom/logitech/harmonylink/devtest/MainListActivity;->CLASSES:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;-><init>()V

    return-void
.end method

.method private upTime()V
    .locals 8

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/logitech/harmonylink/devtest/MainListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    .line 82
    .local v0, app:Lcom/logitech/harmonylink/HarmonyRemoteApplication;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mStartTime:J

    sub-long v2, v4, v6

    .line 83
    .local v2, elapsedTime:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mStartTime:J

    .line 86
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 87
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "elapsedtime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    div-long v5, v2, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sec"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f060016

    new-instance v6, Lcom/logitech/harmonylink/devtest/MainListActivity$1;

    invoke-direct {v6, p0}, Lcom/logitech/harmonylink/devtest/MainListActivity$1;-><init>(Lcom/logitech/harmonylink/devtest/MainListActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 97
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v2, 0x7f030037

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/devtest/MainListActivity;->setContentView(I)V

    .line 61
    const v2, 0x7f070034

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/devtest/MainListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 62
    .local v1, listView:Landroid/widget/ListView;
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x1090003

    sget-object v3, Lcom/logitech/harmonylink/devtest/MainListActivity;->CLASS_NAMES:[Ljava/lang/String;

    invoke-direct {v0, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 64
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 65
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_0

    .line 76
    sget-object v0, Lcom/logitech/harmonylink/devtest/MainListActivity;->CLASSES:[Ljava/lang/Class;

    aget-object v0, v0, p3

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/devtest/MainListActivity;->openActivityForResult(Ljava/lang/Class;)V

    .line 77
    :goto_0
    return-void

    .line 72
    :pswitch_0
    invoke-direct {p0}, Lcom/logitech/harmonylink/devtest/MainListActivity;->upTime()V

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
