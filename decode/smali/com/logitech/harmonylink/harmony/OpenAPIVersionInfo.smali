.class public Lcom/logitech/harmonylink/harmony/OpenAPIVersionInfo;
.super Ljava/lang/Object;
.source "OpenAPIVersionInfo.java"


# static fields
.field public static final COMPATIBLE_RESULT:I = 0x0

.field public static final HARMONY_REMOTE_MIN_REQUIRED_OPEN_API_VERSION:Ljava/lang/String; = "1.0.0"

.field public static final INCOMPATIBLE_RESULT:I = 0x2

.field public static final NORMAL_MODE:I = 0x0

.field public static final SILENT_MODE:I = 0x2

.field public static final TOAST_ONLY_MODE:I = 0x1

.field public static final UNKNOWN_OPEN_API_VERSION:Ljava/lang/String; = "unknown"

.field public static final UPDATE_RECOMMENDED_RESULT:I = 0x1

.field private static final mCheckedServer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHarmonyRemoteMinRequiredOpenAPIVersion:[I

.field private mRevueMinOpenAPIClientVersion:[I

.field private mRevueOpenAPIVersion:[I

.field private mRevueReccommendedOpenAPIClientVersion:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/logitech/harmonylink/harmony/OpenAPIVersionInfo;->mCheckedServer:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "revueOpenApiVersionMessage"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v1, "1.0.0"

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/logitech/harmonylink/harmony/OpenAPIVersionInfo;->getValue([Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/logitech/harmonylink/harmony/OpenAPIVersionInfo;->mHarmonyRemoteMinRequiredOpenAPIVersion:[I

    .line 42
    invoke-static {p1}, Lcom/logitech/connect/client/transport/NameValuePairs;->obtainValueKeyPairs(Ljava/lang/String;)Lcom/logitech/connect/client/transport/NameValuePairs;

    move-result-object v0

    .line 44
    .local v0, pairs:Lcom/logitech/connect/client/transport/NameValuePairs;
    const-string v1, "openApiVersion"

    invoke-virtual {v0, v1}, Lcom/logitech/connect/client/transport/NameValuePairs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/logitech/harmonylink/harmony/OpenAPIVersionInfo;->getValue([Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/logitech/harmonylink/harmony/OpenAPIVersionInfo;->mRevueOpenAPIVersion:[I

    .line 45
    const-string v1, "minimumOpenApiClientVersionRequired"

    invoke-virtual {v0, v1}, Lcom/logitech/connect/client/transport/NameValuePairs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/logitech/harmonylink/harmony/OpenAPIVersionInfo;->getValue([Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/logitech/harmonylink/harmony/OpenAPIVersionInfo;->mRevueMinOpenAPIClientVersion:[I

    .line 46
    const-string v1, "recommendedOpenApiClientVersion"

    invoke-virtual {v0, v1}, Lcom/logitech/connect/client/transport/NameValuePairs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/logitech/harmonylink/harmony/OpenAPIVersionInfo;->getValue([Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/logitech/harmonylink/harmony/OpenAPIVersionInfo;->mRevueReccommendedOpenAPIClientVersion:[I

    .line 47
    return-void
.end method

.method private checkVersion(Lcom/logitech/harmonylink/ui/common/BaseActivity;I)I
    .locals 10
    .parameter "activity"
    .parameter "mode"

    .prologue
    const v9, 0x7f0600b9

    const v8, 0x7f0600b8

    const/4 v7, 0x2

    .line 109
    iget-object v5, p0, Lcom/logitech/harmonylink/harmony/OpenAPIVersionInfo;->mHarmonyRemoteMinRequiredOpenAPIVersion:[I

    iget-object v6, p0, Lcom/logitech/harmonylink/harmony/OpenAPIVersionInfo;->mRevueMinOpenAPIClientVersion:[I

    invoke-static {v5, v6}, Lcom/logitech/harmonylink/harmony/OpenAPIVersionInfo;->compare([I[I)I

    move-result v2

    .line 113
    .local v2, compareMinResult:I
    if-gez v2, :cond_2

    .line 115
    if-nez p2, :cond_1

    .line 116
    invoke-static {p1, v9}, Lcom/logitech/harmonylink/util/AlertBoxOK;->create(Landroid/app/Activity;I)Landroid/app/AlertDialog;

    move-result-object v0

    .line 117
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .end local v0           #alert:Landroid/app/AlertDialog;
    :cond_0
    :goto_0
    move v5, v7

    .line 156
    :goto_1
    return v5

    .line 119
    :cond_1
    if-eq p2, v7, :cond_0

    .line 120
    invoke-virtual {p1, v9}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, upgradeNotice:Ljava/lang/String;
    invoke-virtual {p1, v4}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->setLongNotice(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    .end local v4           #upgradeNotice:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/logitech/harmonylink/harmony/OpenAPIVersionInfo;->mHarmonyRemoteMinRequiredOpenAPIVersion:[I

    iget-object v6, p0, Lcom/logitech/harmonylink/harmony/OpenAPIVersionInfo;->mRevueReccommendedOpenAPIClientVersion:[I

    invoke-static {v5, v6}, Lcom/logitech/harmonylink/harmony/OpenAPIVersionInfo;->compare([I[I)I

    move-result v3

    .line 129
    .local v3, compareRecommendedResult:I
    if-gez v3, :cond_4

    .line 130
    if-eq p2, v7, :cond_3

    .line 131
    const v5, 0x7f0600ba

    invoke-virtual {p1, v5}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 132
    .restart local v4       #upgradeNotice:Ljava/lang/String;
    invoke-virtual {p1, v4}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->setLongNotice(Ljava/lang/String;)V

    .line 135
    .end local v4           #upgradeNotice:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x1

    goto :goto_1

    .line 140
    :cond_4
    iget-object v5, p0, Lcom/logitech/harmonylink/harmony/OpenAPIVersionInfo;->mHarmonyRemoteMinRequiredOpenAPIVersion:[I

    iget-object v6, p0, Lcom/logitech/harmonylink/harmony/OpenAPIVersionInfo;->mRevueOpenAPIVersion:[I

    invoke-static {v5, v6}, Lcom/logitech/harmonylink/harmony/OpenAPIVersionInfo;->compare([I[I)I

    move-result v1

    .line 141
    .local v1, compareMinKaSideResult:I
    if-lez v1, :cond_7

    .line 143
    if-nez p2, :cond_6

    .line 144
    invoke-static {p1, v8}, Lcom/logitech/harmonylink/util/AlertBoxOK;->create(Landroid/app/Activity;I)Landroid/app/AlertDialog;

    move-result-object v0

    .line 145
    .restart local v0       #alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .end local v0           #alert:Landroid/app/AlertDialog;
    :cond_5
    :goto_2
    move v5, v7

    .line 151
    goto :goto_1

    .line 147
    :cond_6
    if-eq p2, v7, :cond_5

    .line 148
    invoke-virtual {p1, v8}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 149
    .restart local v4       #upgradeNotice:Ljava/lang/String;
    invoke-virtual {p1, v4}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->setLongNotice(Ljava/lang/String;)V

    goto :goto_2

    .line 156
    .end local v4           #upgradeNotice:Ljava/lang/String;
    :cond_7
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static checkVersionFromServerList(Lcom/logitech/harmonylink/ui/common/BaseActivity;Ljava/lang/String;I)Z
    .locals 4
    .parameter "activity"
    .parameter "revueOpenApiVersionMessage"
    .parameter "mode"

    .prologue
    const/4 v3, 0x1

    .line 66
    const-string v1, "unknown"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    .line 72
    :goto_0
    return v1

    .line 70
    :cond_0
    new-instance v0, Lcom/logitech/harmonylink/harmony/OpenAPIVersionInfo;

    invoke-direct {v0, p1}, Lcom/logitech/harmonylink/harmony/OpenAPIVersionInfo;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, versionInfo:Lcom/logitech/harmonylink/harmony/OpenAPIVersionInfo;
    invoke-direct {v0, p0, p2}, Lcom/logitech/harmonylink/harmony/OpenAPIVersionInfo;->checkVersion(Lcom/logitech/harmonylink/ui/common/BaseActivity;I)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static checkVersionOnce(Lcom/logitech/harmonylink/ui/common/BaseActivity;Ljava/lang/String;I)Z
    .locals 7
    .parameter "activity"
    .parameter "revueOpenApiVersionMessage"
    .parameter "mode"

    .prologue
    const/4 v6, 0x1

    .line 84
    sget-object v3, Lcom/logitech/harmonylink/harmony/OpenAPIVersionInfo;->mCheckedServer:Ljava/util/HashMap;

    monitor-enter v3

    .line 85
    :try_start_0
    sget-object v4, Lcom/logitech/harmonylink/harmony/OpenAPIVersionInfo;->mCheckedServer:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v2}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getConnectClient()Lcom/logitech/connect/ConnectClient;

    move-result-object v2

    iget-object v2, v2, Lcom/logitech/connect/ConnectClient;->mServerIdentity:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 88
    const-string v2, "unknown"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    monitor-exit v3

    move v2, v6

    .line 103
    .end local p0
    :goto_0
    return v2

    .line 92
    .restart local p0
    :cond_0
    new-instance v1, Lcom/logitech/harmonylink/harmony/OpenAPIVersionInfo;

    invoke-direct {v1, p1}, Lcom/logitech/harmonylink/harmony/OpenAPIVersionInfo;-><init>(Ljava/lang/String;)V

    .line 94
    .local v1, versionInfo:Lcom/logitech/harmonylink/harmony/OpenAPIVersionInfo;
    invoke-direct {v1, p0, p2}, Lcom/logitech/harmonylink/harmony/OpenAPIVersionInfo;->checkVersion(Lcom/logitech/harmonylink/ui/common/BaseActivity;I)I

    move-result v0

    .line 96
    .local v0, checkResult:I
    if-nez v0, :cond_1

    .line 97
    sget-object v2, Lcom/logitech/harmonylink/harmony/OpenAPIVersionInfo;->mCheckedServer:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {p0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getConnectClient()Lcom/logitech/connect/ConnectClient;

    move-result-object v4

    iget-object v4, v4, Lcom/logitech/connect/ConnectClient;->mServerIdentity:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_1
    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    move v2, v6

    :goto_1
    monitor-exit v3

    goto :goto_0

    .line 102
    .end local v0           #checkResult:I
    .end local v1           #versionInfo:Lcom/logitech/harmonylink/harmony/OpenAPIVersionInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 100
    .restart local v0       #checkResult:I
    .restart local v1       #versionInfo:Lcom/logitech/harmonylink/harmony/OpenAPIVersionInfo;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 102
    .end local v0           #checkResult:I
    .end local v1           #versionInfo:Lcom/logitech/harmonylink/harmony/OpenAPIVersionInfo;
    .restart local p0
    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v6

    .line 103
    goto :goto_0
.end method

.method private static compare([I[I)I
    .locals 8
    .parameter "versionA"
    .parameter "versionB"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 187
    array-length v4, p0

    array-length v5, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 189
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 191
    array-length v4, p0

    sub-int/2addr v4, v7

    if-gt v0, v4, :cond_0

    aget v4, p0, v0

    move v2, v4

    .line 192
    .local v2, valueA:I
    :goto_1
    array-length v4, p1

    sub-int/2addr v4, v7

    if-gt v0, v4, :cond_1

    aget v4, p1, v0

    move v3, v4

    .line 194
    .local v3, valueB:I
    :goto_2
    if-ge v2, v3, :cond_2

    .line 195
    const/4 v4, -0x1

    .line 202
    .end local v2           #valueA:I
    .end local v3           #valueB:I
    :goto_3
    return v4

    :cond_0
    move v2, v6

    .line 191
    goto :goto_1

    .restart local v2       #valueA:I
    :cond_1
    move v3, v6

    .line 192
    goto :goto_2

    .line 197
    .restart local v3       #valueB:I
    :cond_2
    if-le v2, v3, :cond_3

    move v4, v7

    .line 198
    goto :goto_3

    .line 189
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2           #valueA:I
    .end local v3           #valueB:I
    :cond_4
    move v4, v6

    .line 202
    goto :goto_3
.end method

.method private static getValue([Ljava/lang/String;)[I
    .locals 7
    .parameter "version"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 161
    const/4 v2, 0x0

    .line 164
    .local v2, result:[I
    if-eqz p0, :cond_0

    :try_start_0
    array-length v3, p0

    if-nez v3, :cond_2

    .line 165
    :cond_0
    const/4 v3, 0x1

    new-array v2, v3, [I

    .line 166
    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v4, v2, v3

    .line 182
    :cond_1
    :goto_0
    return-object v2

    .line 169
    :cond_2
    array-length v3, p0

    new-array v2, v3, [I

    .line 171
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 172
    aget-object v3, p0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 176
    .end local v1           #index:I
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 178
    .local v0, generic:Ljava/lang/Exception;
    new-array v2, v5, [I

    .line 179
    aput v5, v2, v6

    goto :goto_0
.end method


# virtual methods
.method public getRevueMinimumOpenAPIVersion()[I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/OpenAPIVersionInfo;->mRevueMinOpenAPIClientVersion:[I

    return-object v0
.end method

.method public getRevueOpenAPIVersion()[I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/OpenAPIVersionInfo;->mRevueOpenAPIVersion:[I

    return-object v0
.end method

.method public getRevueReccommendedOpenAPIVersion()[I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/OpenAPIVersionInfo;->mRevueReccommendedOpenAPIClientVersion:[I

    return-object v0
.end method
