.class public Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;
.super Ljava/util/ArrayList;
.source "LogitechHarmonyActivities.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;",
        ">;"
    }
.end annotation


# static fields
.field private static final WATCH_GOOGLE_TV:Ljava/lang/String; = "Watch Google TV"

.field private static final serialVersionUID:J = 0x5fcba860ac399a01L


# instance fields
.field private mHasPartiallySetupActivity:Z

.field private mInitialized:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;->mInitialized:Z

    .line 28
    return-void
.end method

.method public find(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    .locals 3
    .parameter "id"

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    .line 32
    .local v0, a:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 35
    .end local v0           #a:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getActivitiesByType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v2, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;>;"
    invoke-virtual {p0}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    .line 88
    .local v0, a:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getActivityType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    .end local v0           #a:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    move-object v3, v2

    :goto_1
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getDefaultActivity()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    .locals 5

    .prologue
    .line 39
    const/4 v2, 0x0

    .line 40
    .local v2, watchGoogleTVActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    invoke-virtual {p0}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    .line 44
    .local v0, a:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Watch Google TV"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 45
    move-object v2, v0

    .line 47
    :cond_1
    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->isDefaultActivity()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 56
    .end local v0           #a:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    :goto_0
    return-object v3

    .line 52
    :cond_2
    if-eqz v2, :cond_3

    move-object v3, v2

    .line 53
    goto :goto_0

    .line 56
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getInitialized()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;->mInitialized:Z

    return v0
.end method

.method public getPartialActivities()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v2, partialActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;>;"
    invoke-virtual {p0}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    .line 71
    .local v0, a:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->isPartiallySetup()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 72
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    .end local v0           #a:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    :cond_1
    return-object v2
.end method

.method public hasPartiallySetupActivity()Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;->mHasPartiallySetupActivity:Z

    return v0
.end method

.method public setHasPartiallySetupActivity(Z)V
    .locals 0
    .parameter "mHasPartiallySetupActivity"

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;->mHasPartiallySetupActivity:Z

    .line 18
    return-void
.end method
