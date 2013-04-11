.class public Lcom/logitech/harmonylink/RemoteControlInitializer;
.super Ljava/lang/Object;
.source "RemoteControlInitializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logitech/harmonylink/RemoteControlInitializer$MimeTypeSelector;,
        Lcom/logitech/harmonylink/RemoteControlInitializer$ActivitySelector;
    }
.end annotation


# static fields
.field private static DPAD_TAB:I = 0x0

.field public static final KA_2X:Ljava/lang/String; = "Revue 2.0"

.field private static final KEYBOARD_TAB:I = 0x3

.field public static final OLIVE:Ljava/lang/String; = "82"

.field private static mHubId:Ljava/lang/String;

.field private static mRemoteControlInitializer:Lcom/logitech/harmonylink/RemoteControlInitializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    sput v0, Lcom/logitech/harmonylink/RemoteControlInitializer;->DPAD_TAB:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "hubId"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sput-object p1, Lcom/logitech/harmonylink/RemoteControlInitializer;->mHubId:Ljava/lang/String;

    .line 34
    invoke-static {p1}, Lcom/logitech/harmonylink/RemoteControlInitializer$ActivitySelector;->prepareScreens(Ljava/lang/String;)V

    .line 35
    invoke-static {p1}, Lcom/logitech/harmonylink/RemoteControlInitializer$MimeTypeSelector;->prepareMimeTypes(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;)Lcom/logitech/harmonylink/RemoteControlInitializer;
    .locals 2
    .parameter "hubId"

    .prologue
    .line 43
    const-class v0, Lcom/logitech/harmonylink/RemoteControlInitializer;

    monitor-enter v0

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v1, Lcom/logitech/harmonylink/RemoteControlInitializer;->mHubId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    sget-object v1, Lcom/logitech/harmonylink/RemoteControlInitializer;->mRemoteControlInitializer:Lcom/logitech/harmonylink/RemoteControlInitializer;

    if-eqz v1, :cond_1

    .line 45
    sget-object v1, Lcom/logitech/harmonylink/RemoteControlInitializer;->mRemoteControlInitializer:Lcom/logitech/harmonylink/RemoteControlInitializer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :goto_0
    monitor-exit v0

    return-object v1

    .line 47
    :cond_0
    if-nez p0, :cond_1

    :try_start_1
    sget-object v1, Lcom/logitech/harmonylink/RemoteControlInitializer;->mHubId:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 51
    sget-object v1, Lcom/logitech/harmonylink/RemoteControlInitializer;->mRemoteControlInitializer:Lcom/logitech/harmonylink/RemoteControlInitializer;

    if-eqz v1, :cond_1

    .line 52
    sget-object v1, Lcom/logitech/harmonylink/RemoteControlInitializer;->mRemoteControlInitializer:Lcom/logitech/harmonylink/RemoteControlInitializer;

    goto :goto_0

    .line 56
    :cond_1
    new-instance v1, Lcom/logitech/harmonylink/RemoteControlInitializer;

    invoke-direct {v1, p0}, Lcom/logitech/harmonylink/RemoteControlInitializer;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/logitech/harmonylink/RemoteControlInitializer;->mRemoteControlInitializer:Lcom/logitech/harmonylink/RemoteControlInitializer;

    .line 57
    sget-object v1, Lcom/logitech/harmonylink/RemoteControlInitializer;->mRemoteControlInitializer:Lcom/logitech/harmonylink/RemoteControlInitializer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 43
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getHubId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/logitech/harmonylink/RemoteControlInitializer;->mHubId:Ljava/lang/String;

    return-object v0
.end method

.method public getMenu()Lcom/logitech/harmonylink/menu/IMenu;
    .locals 2

    .prologue
    .line 79
    sget-object v0, Lcom/logitech/harmonylink/RemoteControlInitializer;->mHubId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/logitech/harmonylink/menu/MenuForKa1x;

    invoke-direct {v0}, Lcom/logitech/harmonylink/menu/MenuForKa1x;-><init>()V

    .line 84
    :goto_0
    return-object v0

    .line 81
    :cond_0
    sget-object v0, Lcom/logitech/harmonylink/RemoteControlInitializer;->mHubId:Ljava/lang/String;

    const-string v1, "Revue 2.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/logitech/harmonylink/RemoteControlInitializer;->mHubId:Ljava/lang/String;

    const-string v1, "82"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    :cond_1
    new-instance v0, Lcom/logitech/harmonylink/menu/MenuForKa2x;

    invoke-direct {v0}, Lcom/logitech/harmonylink/menu/MenuForKa2x;-><init>()V

    goto :goto_0

    .line 84
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "requestType"

    .prologue
    .line 65
    invoke-static {p1}, Lcom/logitech/harmonylink/RemoteControlInitializer$MimeTypeSelector;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParser()Lcom/logitech/harmonylink/common/IUserConfigParser;
    .locals 2

    .prologue
    .line 69
    sget-object v0, Lcom/logitech/harmonylink/RemoteControlInitializer;->mHubId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/logitech/harmonylink/common/XmlUserConfigParser;

    invoke-direct {v0}, Lcom/logitech/harmonylink/common/XmlUserConfigParser;-><init>()V

    .line 74
    :goto_0
    return-object v0

    .line 71
    :cond_0
    sget-object v0, Lcom/logitech/harmonylink/RemoteControlInitializer;->mHubId:Ljava/lang/String;

    const-string v1, "Revue 2.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/logitech/harmonylink/RemoteControlInitializer;->mHubId:Ljava/lang/String;

    const-string v1, "82"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    :cond_1
    new-instance v0, Lcom/logitech/harmonylink/common/JsonUserConfigParser;

    invoke-direct {v0}, Lcom/logitech/harmonylink/common/JsonUserConfigParser;-><init>()V

    goto :goto_0

    .line 74
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScreen(Ljava/lang/String;)Ljava/lang/Class;
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
    .line 61
    invoke-static {p1}, Lcom/logitech/harmonylink/RemoteControlInitializer$ActivitySelector;->getScreen(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getSearchTab()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 89
    sget-object v0, Lcom/logitech/harmonylink/RemoteControlInitializer;->mHubId:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/logitech/harmonylink/RemoteControlInitializer;->mHubId:Ljava/lang/String;

    const-string v1, "Revue 2.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 95
    :goto_0
    return-object v0

    .line 92
    :cond_1
    sget-object v0, Lcom/logitech/harmonylink/RemoteControlInitializer;->mHubId:Ljava/lang/String;

    const-string v1, "82"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    new-instance v0, Ljava/lang/Integer;

    sget v1, Lcom/logitech/harmonylink/RemoteControlInitializer;->DPAD_TAB:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    .line 95
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
