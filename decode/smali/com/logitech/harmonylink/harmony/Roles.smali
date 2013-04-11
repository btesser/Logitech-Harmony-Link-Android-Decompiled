.class public Lcom/logitech/harmonylink/harmony/Roles;
.super Ljava/lang/Object;
.source "Roles.java"


# static fields
.field public static final ROLES:[Ljava/lang/String; = null

.field public static final ROLE_DEFAULT:Ljava/lang/String; = "DEFAULT"

.field public static final ROLE_DISPLAY:Ljava/lang/String; = "DISPLAY"

.field public static final ROLE_PASSTHROUGH:Ljava/lang/String; = "PASSTHROUGH"

.field public static final ROLE_VOLUME:Ljava/lang/String; = "VOLUME"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DEFAULT"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "DISPLAY"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "VOLUME"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "PASSTHROUGH"

    aput-object v2, v0, v1

    sput-object v0, Lcom/logitech/harmonylink/harmony/Roles;->ROLES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isRole(Ljava/lang/String;)Z
    .locals 5
    .parameter "roleName"

    .prologue
    .line 13
    sget-object v0, Lcom/logitech/harmonylink/harmony/Roles;->ROLES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 14
    .local v3, role:Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 15
    const/4 v4, 0x1

    .line 17
    .end local v3           #role:Ljava/lang/String;
    :goto_1
    return v4

    .line 13
    .restart local v3       #role:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 17
    .end local v3           #role:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
