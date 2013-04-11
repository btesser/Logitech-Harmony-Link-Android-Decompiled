.class Lcom/logitech/harmonylink/service/ContentCompareService$MyBinder;
.super Landroid/os/Binder;
.source "ContentCompareService.java"

# interfaces
.implements Lcom/logitech/harmonylink/service/ContentCompareService$IGetAndCompareItems;
.implements Lcom/logitech/harmonylink/harmony/ILiveFolderContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/service/ContentCompareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyBinder"
.end annotation


# instance fields
.field private mLiveFolderContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/model/OneTouchContent;",
            ">;"
        }
    .end annotation
.end field

.field private mNoOfSections:I

.field private mOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

.field final synthetic this$0:Lcom/logitech/harmonylink/service/ContentCompareService;


# direct methods
.method private constructor <init>(Lcom/logitech/harmonylink/service/ContentCompareService;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/logitech/harmonylink/service/ContentCompareService$MyBinder;->this$0:Lcom/logitech/harmonylink/service/ContentCompareService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/logitech/harmonylink/service/ContentCompareService;Lcom/logitech/harmonylink/service/ContentCompareService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/service/ContentCompareService$MyBinder;-><init>(Lcom/logitech/harmonylink/service/ContentCompareService;)V

    return-void
.end method

.method private retrieveLiveFolderContents(Lcom/logitech/harmonylink/harmony/OneTouchManager;Lcom/logitech/connect/ConnectClient;)V
    .locals 5
    .parameter "manager"
    .parameter "client"

    .prologue
    const/4 v4, 0x1

    .line 113
    iget-object v2, p0, Lcom/logitech/harmonylink/service/ContentCompareService$MyBinder;->this$0:Lcom/logitech/harmonylink/service/ContentCompareService;

    invoke-virtual {v2}, Lcom/logitech/harmonylink/service/ContentCompareService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    .line 115
    .local v0, app:Lcom/logitech/harmonylink/HarmonyRemoteApplication;
    invoke-virtual {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getConnectionState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    move v1, v4

    .line 118
    .local v1, isConnected:Z
    :goto_0
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 119
    iput v4, p0, Lcom/logitech/harmonylink/service/ContentCompareService$MyBinder;->mNoOfSections:I

    .line 127
    :cond_0
    return-void

    .line 115
    .end local v1           #isConnected:Z
    :cond_1
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public getAndCompareItems(Lcom/logitech/harmonylink/harmony/OneTouchManager;Lcom/logitech/connect/ConnectClient;)V
    .locals 1
    .parameter "om"
    .parameter "client"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/logitech/harmonylink/service/ContentCompareService$MyBinder;->mOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    .line 63
    iget-object v0, p0, Lcom/logitech/harmonylink/service/ContentCompareService$MyBinder;->mOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    invoke-virtual {v0, p0}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->addLiveFolderContentObserver(Lcom/logitech/harmonylink/harmony/ILiveFolderContentObserver;)V

    .line 64
    iget-object v0, p0, Lcom/logitech/harmonylink/service/ContentCompareService$MyBinder;->mOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    invoke-direct {p0, v0, p2}, Lcom/logitech/harmonylink/service/ContentCompareService$MyBinder;->retrieveLiveFolderContents(Lcom/logitech/harmonylink/harmony/OneTouchManager;Lcom/logitech/connect/ConnectClient;)V

    .line 65
    return-void
.end method

.method public onLiveFolderContentAvailable(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/model/OneTouchContent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, liveFolderContents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/harmonylink/model/OneTouchContent;>;"
    iget-object v2, p0, Lcom/logitech/harmonylink/service/ContentCompareService$MyBinder;->mOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    invoke-virtual {v2}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->getOneTouchContents()Ljava/util/ArrayList;

    move-result-object v1

    .line 71
    .local v1, oneTouchContents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/harmonylink/model/OneTouchContent;>;"
    iget v2, p0, Lcom/logitech/harmonylink/service/ContentCompareService$MyBinder;->mNoOfSections:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 72
    iget-object v2, p0, Lcom/logitech/harmonylink/service/ContentCompareService$MyBinder;->mLiveFolderContents:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 73
    iget-object v2, p0, Lcom/logitech/harmonylink/service/ContentCompareService$MyBinder;->mLiveFolderContents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 79
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 80
    iget-object v2, p0, Lcom/logitech/harmonylink/service/ContentCompareService$MyBinder;->mLiveFolderContents:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 82
    iget v2, p0, Lcom/logitech/harmonylink/service/ContentCompareService$MyBinder;->mNoOfSections:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/logitech/harmonylink/service/ContentCompareService$MyBinder;->mNoOfSections:I

    .line 84
    iget v2, p0, Lcom/logitech/harmonylink/service/ContentCompareService$MyBinder;->mNoOfSections:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 85
    iget-object v2, p0, Lcom/logitech/harmonylink/service/ContentCompareService$MyBinder;->mLiveFolderContents:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 86
    iget-object v2, p0, Lcom/logitech/harmonylink/service/ContentCompareService$MyBinder;->mOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    if-eqz v2, :cond_1

    .line 91
    if-eqz v1, :cond_1

    .line 92
    iget-object v2, p0, Lcom/logitech/harmonylink/service/ContentCompareService$MyBinder;->mOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    iget-object v3, p0, Lcom/logitech/harmonylink/service/ContentCompareService$MyBinder;->mLiveFolderContents:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->updateOneTouchContents(Ljava/util/ArrayList;)V

    .line 94
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 95
    .local v0, i:Landroid/content/Intent;
    const-string v2, "notify gridview"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    iget-object v2, p0, Lcom/logitech/harmonylink/service/ContentCompareService$MyBinder;->this$0:Lcom/logitech/harmonylink/service/ContentCompareService;

    #getter for: Lcom/logitech/harmonylink/service/ContentCompareService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/logitech/harmonylink/service/ContentCompareService;->access$100(Lcom/logitech/harmonylink/service/ContentCompareService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 103
    .end local v0           #i:Landroid/content/Intent;
    :cond_1
    return-void

    .line 75
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/logitech/harmonylink/service/ContentCompareService$MyBinder;->mLiveFolderContents:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public removeObserver()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/logitech/harmonylink/service/ContentCompareService$MyBinder;->mOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/logitech/harmonylink/service/ContentCompareService$MyBinder;->mOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    invoke-virtual {v0, p0}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->removeLiveFolderContentObserver(Lcom/logitech/harmonylink/harmony/ILiveFolderContentObserver;)V

    .line 134
    :cond_0
    return-void
.end method
