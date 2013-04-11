.class Lcom/logitech/harmonylink/RemoteControlInitializer$ActivitySelector;
.super Ljava/lang/Object;
.source "RemoteControlInitializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/RemoteControlInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivitySelector"
.end annotation


# static fields
.field private static mScreenMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/logitech/harmonylink/RemoteControlInitializer$ActivitySelector;->mScreenMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScreen(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .parameter "screenName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    sget-object v0, Lcom/logitech/harmonylink/RemoteControlInitializer$ActivitySelector;->mScreenMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Class;

    return-object p0
.end method

.method public static prepareScreens(Lcom/logitech/connect/Target;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/logitech/connect/Target;->getHubId()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, hubId:Ljava/lang/String;
    invoke-static {v0}, Lcom/logitech/harmonylink/RemoteControlInitializer$ActivitySelector;->prepareScreens(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public static prepareScreens(Ljava/lang/String;)V
    .locals 1
    .parameter "hubId"

    .prologue
    .line 120
    if-nez p0, :cond_1

    .line 121
    invoke-static {}, Lcom/logitech/harmonylink/RemoteControlInitializer$ActivitySelector;->prepareScreensForKa1x()V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    const-string v0, "Revue 2.0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    invoke-static {}, Lcom/logitech/harmonylink/RemoteControlInitializer$ActivitySelector;->prepareScreensForKa2x()V

    goto :goto_0

    .line 124
    :cond_2
    const-string v0, "82"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-static {}, Lcom/logitech/harmonylink/RemoteControlInitializer$ActivitySelector;->prepareScreensForOlive()V

    goto :goto_0
.end method

.method private static prepareScreensForKa1x()V
    .locals 3

    .prologue
    .line 134
    sget-object v0, Lcom/logitech/harmonylink/RemoteControlInitializer$ActivitySelector;->mScreenMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 135
    sget-object v0, Lcom/logitech/harmonylink/RemoteControlInitializer$ActivitySelector;->mScreenMap:Ljava/util/HashMap;

    const-string v1, "home"

    const-class v2, Lcom/logitech/harmonylink/ka1x/DevicesActivity;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/logitech/harmonylink/RemoteControlInitializer$ActivitySelector;->mScreenMap:Ljava/util/HashMap;

    const-string v1, "authenticate"

    const-class v2, Lcom/logitech/harmonylink/context/EnterPinActivity;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/logitech/harmonylink/RemoteControlInitializer$ActivitySelector;->mScreenMap:Ljava/util/HashMap;

    const-string v1, "settings"

    const-class v2, Lcom/logitech/harmonylink/ka1x/SettingsActivity;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-void
.end method

.method private static prepareScreensForKa2x()V
    .locals 3

    .prologue
    .line 141
    sget-object v0, Lcom/logitech/harmonylink/RemoteControlInitializer$ActivitySelector;->mScreenMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 142
    sget-object v0, Lcom/logitech/harmonylink/RemoteControlInitializer$ActivitySelector;->mScreenMap:Ljava/util/HashMap;

    const-string v1, "home"

    const-class v2, Lcom/logitech/harmonylink/context/OneTouchActivity;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/logitech/harmonylink/RemoteControlInitializer$ActivitySelector;->mScreenMap:Ljava/util/HashMap;

    const-string v1, "authenticate"

    const-class v2, Lcom/logitech/harmonylink/context/EnterPinActivity;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/logitech/harmonylink/RemoteControlInitializer$ActivitySelector;->mScreenMap:Ljava/util/HashMap;

    const-string v1, "settings"

    const-class v2, Lcom/logitech/harmonylink/context/SettingsActivity;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/logitech/harmonylink/RemoteControlInitializer$ActivitySelector;->mScreenMap:Ljava/util/HashMap;

    const-string v1, "sync"

    const-class v2, Lcom/logitech/harmonylink/context/ManualSyncActivity;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    return-void
.end method

.method private static prepareScreensForOlive()V
    .locals 3

    .prologue
    .line 150
    sget-object v0, Lcom/logitech/harmonylink/RemoteControlInitializer$ActivitySelector;->mScreenMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 151
    sget-object v0, Lcom/logitech/harmonylink/RemoteControlInitializer$ActivitySelector;->mScreenMap:Ljava/util/HashMap;

    const-string v1, "home"

    const-class v2, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/logitech/harmonylink/RemoteControlInitializer$ActivitySelector;->mScreenMap:Ljava/util/HashMap;

    const-string v1, "authenticate"

    const-class v2, Lcom/logitech/harmonylink/context/LoginActivity;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/logitech/harmonylink/RemoteControlInitializer$ActivitySelector;->mScreenMap:Ljava/util/HashMap;

    const-string v1, "settings"

    const-class v2, Lcom/logitech/harmonylink/olive/ui/SettingsActivity;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/logitech/harmonylink/RemoteControlInitializer$ActivitySelector;->mScreenMap:Ljava/util/HashMap;

    const-string v1, "sync"

    const-class v2, Lcom/logitech/harmonylink/olive/ui/ManualSyncOliveActivity;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    return-void
.end method
