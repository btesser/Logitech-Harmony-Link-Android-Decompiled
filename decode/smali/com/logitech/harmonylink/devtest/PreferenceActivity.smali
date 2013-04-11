.class public Lcom/logitech/harmonylink/devtest/PreferenceActivity;
.super Lcom/logitech/harmonylink/ui/common/BaseActivity;
.source "PreferenceActivity.java"


# static fields
.field static final PREFS:Ljava/lang/String; = "ConnectClient"


# instance fields
.field adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field editTxt:Landroid/widget/EditText;

.field lv:Landroid/widget/ListView;

.field perf:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;-><init>()V

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/logitech/harmonylink/devtest/PreferenceActivity;->perf:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/logitech/harmonylink/devtest/PreferenceActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/devtest/PreferenceActivity;->updateIp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/logitech/harmonylink/devtest/PreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/logitech/harmonylink/devtest/PreferenceActivity;->reloadData()V

    return-void
.end method

.method private readPrefData()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 57
    const-string v1, "ConnectClient"

    invoke-virtual {p0, v1, v5}, Lcom/logitech/harmonylink/devtest/PreferenceActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 58
    .local v0, settings:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/logitech/harmonylink/devtest/PreferenceActivity;->perf:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "localServer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "localServer"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 59
    iget-object v1, p0, Lcom/logitech/harmonylink/devtest/PreferenceActivity;->perf:[Ljava/lang/String;

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "userName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "userName"

    const-string v5, "guest"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 60
    iget-object v1, p0, Lcom/logitech/harmonylink/devtest/PreferenceActivity;->perf:[Ljava/lang/String;

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "serverIdentity:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "serverIdentity"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 62
    return-void
.end method

.method private reloadData()V
    .locals 3

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/logitech/harmonylink/devtest/PreferenceActivity;->readPrefData()V

    .line 66
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    iget-object v2, p0, Lcom/logitech/harmonylink/devtest/PreferenceActivity;->perf:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/devtest/PreferenceActivity;->adapter:Landroid/widget/ArrayAdapter;

    .line 67
    iget-object v0, p0, Lcom/logitech/harmonylink/devtest/PreferenceActivity;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 68
    return-void
.end method

.method private updateIp(Ljava/lang/String;)V
    .locals 3
    .parameter "ip"

    .prologue
    .line 72
    const-string v1, "ConnectClient"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/logitech/harmonylink/devtest/PreferenceActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 73
    .local v0, settings:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "localServer"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 75
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v2, 0x7f03004c

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/devtest/PreferenceActivity;->setContentView(I)V

    .line 28
    invoke-direct {p0}, Lcom/logitech/harmonylink/devtest/PreferenceActivity;->readPrefData()V

    .line 30
    const v2, 0x7f0700e4

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/devtest/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/logitech/harmonylink/devtest/PreferenceActivity;->lv:Landroid/widget/ListView;

    .line 31
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090003

    iget-object v4, p0, Lcom/logitech/harmonylink/devtest/PreferenceActivity;->perf:[Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/logitech/harmonylink/devtest/PreferenceActivity;->adapter:Landroid/widget/ArrayAdapter;

    .line 32
    iget-object v2, p0, Lcom/logitech/harmonylink/devtest/PreferenceActivity;->lv:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/logitech/harmonylink/devtest/PreferenceActivity;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 34
    const v2, 0x7f0700e3

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/devtest/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/logitech/harmonylink/devtest/PreferenceActivity;->editTxt:Landroid/widget/EditText;

    .line 36
    const v2, 0x7f0700e2

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/devtest/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 37
    .local v0, ipBtn:Landroid/widget/Button;
    new-instance v2, Lcom/logitech/harmonylink/devtest/PreferenceActivity$1;

    invoke-direct {v2, p0}, Lcom/logitech/harmonylink/devtest/PreferenceActivity$1;-><init>(Lcom/logitech/harmonylink/devtest/PreferenceActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    const v2, 0x7f0700e1

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/devtest/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 46
    .local v1, refBtn:Landroid/widget/Button;
    new-instance v2, Lcom/logitech/harmonylink/devtest/PreferenceActivity$2;

    invoke-direct {v2, p0}, Lcom/logitech/harmonylink/devtest/PreferenceActivity$2;-><init>(Lcom/logitech/harmonylink/devtest/PreferenceActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method
