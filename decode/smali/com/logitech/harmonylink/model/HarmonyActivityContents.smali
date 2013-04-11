.class public Lcom/logitech/harmonylink/model/HarmonyActivityContents;
.super Lcom/logitech/harmonylink/model/ContentType;
.source "HarmonyActivityContents.java"

# interfaces
.implements Lcom/logitech/harmonylink/harmony/IDomObserver;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mIsFromAddMore:Z

.field private mOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/logitech/harmonylink/model/HarmonyActivityContents;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/logitech/harmonylink/model/HarmonyActivityContents;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/model/ContentType;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object p1, p0, Lcom/logitech/harmonylink/model/HarmonyActivityContents;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method private setRetrievedContents(Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;)V
    .locals 9
    .parameter "harmonyActivities"

    .prologue
    const/4 v8, 0x1

    .line 64
    invoke-virtual {p1}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 65
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Lcom/logitech/harmonylink/model/HarmonyActivityContents;->contents:Ljava/util/ArrayList;

    .line 66
    invoke-virtual {p1}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    .line 67
    .local v3, harmonyActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    invoke-virtual {v3}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getName()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, activityName:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getId()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, activityId:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getActivityType()Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, activityType:Ljava/lang/String;
    new-instance v5, Lcom/logitech/harmonylink/model/OneTouchContent;

    const-string v6, "activities"

    invoke-direct {v5, v1, v6}, Lcom/logitech/harmonylink/model/OneTouchContent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .local v5, oneTouchContent:Lcom/logitech/harmonylink/model/OneTouchContent;
    invoke-static {v2}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getIconResourceIDbyActivityType(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/logitech/harmonylink/model/OneTouchContent;->setResourceId(I)V

    .line 73
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resource:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getIconResourceIDbyActivityType(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/logitech/harmonylink/model/OneTouchContent;->setHash(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v5, v0}, Lcom/logitech/harmonylink/model/OneTouchContent;->setLauncherParameter(Ljava/lang/String;)V

    .line 76
    iget-object v6, p0, Lcom/logitech/harmonylink/model/HarmonyActivityContents;->contents:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    .end local v0           #activityId:Ljava/lang/String;
    .end local v1           #activityName:Ljava/lang/String;
    .end local v2           #activityType:Ljava/lang/String;
    .end local v3           #harmonyActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    .end local v5           #oneTouchContent:Lcom/logitech/harmonylink/model/OneTouchContent;
    :cond_0
    iget-boolean v6, p0, Lcom/logitech/harmonylink/model/HarmonyActivityContents;->mIsFromAddMore:Z

    if-eqz v6, :cond_1

    .line 80
    iget-object v6, p0, Lcom/logitech/harmonylink/model/HarmonyActivityContents;->mOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    iget-object v7, p0, Lcom/logitech/harmonylink/model/HarmonyActivityContents;->contents:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->notifyLiveFolderObservers(Ljava/util/ArrayList;)V

    .line 95
    .end local v4           #i$:Ljava/util/Iterator;
    :goto_1
    return-void

    .line 84
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p0, v8}, Lcom/logitech/harmonylink/model/HarmonyActivityContents;->setPopulated(Z)V

    .line 85
    iget-object v6, p0, Lcom/logitech/harmonylink/model/HarmonyActivityContents;->mOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    invoke-virtual {v6}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mergeItems()V

    goto :goto_1

    .line 88
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_2
    iget-boolean v6, p0, Lcom/logitech/harmonylink/model/HarmonyActivityContents;->mIsFromAddMore:Z

    if-eqz v6, :cond_3

    .line 89
    iget-object v6, p0, Lcom/logitech/harmonylink/model/HarmonyActivityContents;->mOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->notifyLiveFolderObservers(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 91
    :cond_3
    invoke-virtual {p0, v8}, Lcom/logitech/harmonylink/model/HarmonyActivityContents;->setPopulated(Z)V

    .line 92
    iget-object v6, p0, Lcom/logitech/harmonylink/model/HarmonyActivityContents;->mOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    invoke-virtual {v6}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mergeItems()V

    goto :goto_1
.end method


# virtual methods
.method public onDomUpdated(Ljava/lang/Class;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, hint:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/logitech/harmonylink/model/HarmonyActivityContents;->mOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v1

    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/Dom;->getActivities()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;

    move-result-object v0

    .line 59
    .local v0, harmonyActivities:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;
    iget-object v1, p0, Lcom/logitech/harmonylink/model/HarmonyActivityContents;->mOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/logitech/harmonylink/harmony/Dom;->removeObserver(Lcom/logitech/harmonylink/harmony/IDomObserver;)V

    .line 60
    invoke-direct {p0, v0}, Lcom/logitech/harmonylink/model/HarmonyActivityContents;->setRetrievedContents(Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;)V

    .line 61
    return-void
.end method

.method public retrieveContents(Lcom/logitech/connect/ConnectClient;Lcom/logitech/harmonylink/harmony/OneTouchManager;Z)V
    .locals 1
    .parameter "connectClient"
    .parameter "oneTouchManager"
    .parameter "isFromAddMore"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/logitech/harmonylink/model/HarmonyActivityContents;->retrieveContents(Lcom/logitech/connect/ConnectClient;Lcom/logitech/harmonylink/harmony/OneTouchManager;ZLjava/lang/String;)V

    .line 40
    return-void
.end method

.method public retrieveContents(Lcom/logitech/connect/ConnectClient;Lcom/logitech/harmonylink/harmony/OneTouchManager;ZLjava/lang/String;)V
    .locals 2
    .parameter "connectClient"
    .parameter "oneTouchManager"
    .parameter "isFromAddMore"
    .parameter "bodyContent"

    .prologue
    .line 46
    iput-object p2, p0, Lcom/logitech/harmonylink/model/HarmonyActivityContents;->mOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    .line 47
    iput-boolean p3, p0, Lcom/logitech/harmonylink/model/HarmonyActivityContents;->mIsFromAddMore:Z

    .line 48
    iget-object v1, p0, Lcom/logitech/harmonylink/model/HarmonyActivityContents;->mOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v1

    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/Dom;->getActivities()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;

    move-result-object v0

    .line 50
    .local v0, harmonyActivities:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;
    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 51
    invoke-direct {p0, v0}, Lcom/logitech/harmonylink/model/HarmonyActivityContents;->setRetrievedContents(Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;)V

    .line 54
    :cond_0
    return-void
.end method
