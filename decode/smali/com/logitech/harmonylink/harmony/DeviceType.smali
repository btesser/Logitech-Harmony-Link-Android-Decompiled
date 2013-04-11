.class public final enum Lcom/logitech/harmonylink/harmony/DeviceType;
.super Ljava/lang/Enum;
.source "DeviceType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/logitech/harmonylink/harmony/DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/logitech/harmonylink/harmony/DeviceType;

.field public static final enum AVR:Lcom/logitech/harmonylink/harmony/DeviceType;

.field public static final enum CUSTOMIZE_KEY_LEARN:Lcom/logitech/harmonylink/harmony/DeviceType;

.field public static final enum OTHER:Lcom/logitech/harmonylink/harmony/DeviceType;

.field public static final enum STB:Lcom/logitech/harmonylink/harmony/DeviceType;

.field public static final enum TV:Lcom/logitech/harmonylink/harmony/DeviceType;

.field private static mDeviceTypeNames:[[Ljava/lang/String;

.field private static final reverseMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/logitech/harmonylink/harmony/DeviceType;",
            ">;"
        }
    .end annotation
.end field

.field private static final reverseStringMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final subTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/logitech/harmonylink/harmony/DeviceType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private friendlyName:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private mSubTypes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 22
    new-instance v0, Lcom/logitech/harmonylink/harmony/DeviceType;

    const-string v1, "TV"

    const/4 v2, 0x0

    const-string v3, "tv"

    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/logitech/harmonylink/harmony/DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;[I)V

    sput-object v0, Lcom/logitech/harmonylink/harmony/DeviceType;->TV:Lcom/logitech/harmonylink/harmony/DeviceType;

    .line 23
    new-instance v0, Lcom/logitech/harmonylink/harmony/DeviceType;

    const-string v1, "STB"

    const/4 v2, 0x1

    const-string v3, "stb"

    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/logitech/harmonylink/harmony/DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;[I)V

    sput-object v0, Lcom/logitech/harmonylink/harmony/DeviceType;->STB:Lcom/logitech/harmonylink/harmony/DeviceType;

    .line 24
    new-instance v0, Lcom/logitech/harmonylink/harmony/DeviceType;

    const-string v1, "AVR"

    const/4 v2, 0x2

    const-string v3, "avr"

    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/logitech/harmonylink/harmony/DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;[I)V

    sput-object v0, Lcom/logitech/harmonylink/harmony/DeviceType;->AVR:Lcom/logitech/harmonylink/harmony/DeviceType;

    .line 25
    new-instance v0, Lcom/logitech/harmonylink/harmony/DeviceType;

    const-string v1, "CUSTOMIZE_KEY_LEARN"

    const/4 v2, 0x3

    const-string v3, "customizeKeyLearn"

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/logitech/harmonylink/harmony/DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;[I)V

    sput-object v0, Lcom/logitech/harmonylink/harmony/DeviceType;->CUSTOMIZE_KEY_LEARN:Lcom/logitech/harmonylink/harmony/DeviceType;

    .line 26
    new-instance v0, Lcom/logitech/harmonylink/harmony/DeviceType;

    const-string v1, "OTHER"

    const/4 v2, 0x4

    const-string v3, "other"

    const/16 v4, 0x16

    new-array v4, v4, [I

    fill-array-data v4, :array_3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/logitech/harmonylink/harmony/DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;[I)V

    sput-object v0, Lcom/logitech/harmonylink/harmony/DeviceType;->OTHER:Lcom/logitech/harmonylink/harmony/DeviceType;

    .line 20
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/logitech/harmonylink/harmony/DeviceType;

    const/4 v1, 0x0

    sget-object v2, Lcom/logitech/harmonylink/harmony/DeviceType;->TV:Lcom/logitech/harmonylink/harmony/DeviceType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/logitech/harmonylink/harmony/DeviceType;->STB:Lcom/logitech/harmonylink/harmony/DeviceType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/logitech/harmonylink/harmony/DeviceType;->AVR:Lcom/logitech/harmonylink/harmony/DeviceType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/logitech/harmonylink/harmony/DeviceType;->CUSTOMIZE_KEY_LEARN:Lcom/logitech/harmonylink/harmony/DeviceType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/logitech/harmonylink/harmony/DeviceType;->OTHER:Lcom/logitech/harmonylink/harmony/DeviceType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/logitech/harmonylink/harmony/DeviceType;->$VALUES:[Lcom/logitech/harmonylink/harmony/DeviceType;

    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "tv"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Television"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "Projector"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "Monitor"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "TVVCR"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "TVDVD"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "TVDVDVCR"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "TVHDD"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "TV"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "avr"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "StereoReceiver"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "Amplifier"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "MiniSystemCDRadioCassette"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "MiniSystemDvdCDRadio"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "MiniSystemDvdVcrRadio"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Receiver"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "stb"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "DigitalSetTopBox"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "CableBox"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "Satellite"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "PVR"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "DVDVCR"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "DVDRecorder"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "DVDRVCR"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Lcom/logitech/harmonylink/harmony/DeviceType;->mDeviceTypeNames:[[Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/logitech/harmonylink/harmony/DeviceType;->reverseMap:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/logitech/harmonylink/harmony/DeviceType;->reverseStringMap:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/logitech/harmonylink/harmony/DeviceType;->subTypeMap:Ljava/util/Map;

    .line 45
    sget-object v0, Lcom/logitech/harmonylink/harmony/DeviceType;->mDeviceTypeNames:[[Ljava/lang/String;

    .local v0, arr$:[[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    move v5, v1

    .end local v0           #arr$:[[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v6           #len$:I
    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v3, v0, v5

    .line 46
    .local v3, deviceTypeStringArray:[Ljava/lang/String;
    move-object v1, v3

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v2, 0x0

    .end local v5           #i$:I
    .local v2, i$:I
    move v4, v2

    .end local v2           #i$:I
    .local v4, i$:I
    :goto_1
    if-ge v4, v7, :cond_0

    aget-object v2, v1, v4

    .line 47
    .local v2, deviceTypeString:Ljava/lang/String;
    sget-object v8, Lcom/logitech/harmonylink/harmony/DeviceType;->reverseStringMap:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .end local v2           #deviceTypeString:Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v3, v9

    invoke-interface {v8, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    add-int/lit8 v2, v4, 0x1

    .end local v4           #i$:I
    .local v2, i$:I
    move v4, v2

    .end local v2           #i$:I
    .restart local v4       #i$:I
    goto :goto_1

    .line 45
    :cond_0
    add-int/lit8 v1, v5, 0x1

    .end local v4           #i$:I
    .local v1, i$:I
    move v5, v1

    .end local v1           #i$:I
    .restart local v5       #i$:I
    goto :goto_0

    .line 51
    .end local v3           #deviceTypeStringArray:[Ljava/lang/String;
    .end local v7           #len$:I
    :cond_1
    const-class v0, Lcom/logitech/harmonylink/harmony/DeviceType;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v5           #i$:I
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/logitech/harmonylink/harmony/DeviceType;

    .line 52
    .local v5, s:Lcom/logitech/harmonylink/harmony/DeviceType;
    sget-object v0, Lcom/logitech/harmonylink/harmony/DeviceType;->reverseMap:Ljava/util/Map;

    iget-object v1, v5, Lcom/logitech/harmonylink/harmony/DeviceType;->key:Ljava/lang/String;

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-virtual {v5}, Lcom/logitech/harmonylink/harmony/DeviceType;->getSubTypes()[I

    move-result-object v0

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    move v3, v1

    .end local v1           #i$:I
    .local v3, i$:I
    :goto_2
    if-ge v3, v4, :cond_2

    aget v1, v0, v3

    .line 55
    .local v1, i:I
    sget-object v6, Lcom/logitech/harmonylink/harmony/DeviceType;->subTypeMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .end local v1           #i:I
    invoke-interface {v6, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    add-int/lit8 v1, v3, 0x1

    .end local v3           #i$:I
    .local v1, i$:I
    move v3, v1

    .end local v1           #i$:I
    .restart local v3       #i$:I
    goto :goto_2

    .line 58
    .end local v0           #arr$:[I
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #s:Lcom/logitech/harmonylink/harmony/DeviceType;
    :cond_3
    return-void

    .line 22
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
    .end array-data

    .line 23
    :array_1
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
    .end array-data

    .line 24
    :array_2
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
    .end array-data

    .line 26
    :array_3
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xe7t 0x3t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;[I)V
    .locals 0
    .parameter
    .parameter
    .parameter "key"
    .parameter "subTypes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 70
    iput-object p3, p0, Lcom/logitech/harmonylink/harmony/DeviceType;->key:Ljava/lang/String;

    .line 71
    iput-object p4, p0, Lcom/logitech/harmonylink/harmony/DeviceType;->mSubTypes:[I

    .line 72
    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/DeviceType;
    .locals 1
    .parameter "key"

    .prologue
    .line 96
    sget-object v0, Lcom/logitech/harmonylink/harmony/DeviceType;->reverseMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/logitech/harmonylink/harmony/DeviceType;

    return-object p0
.end method

.method public static getFromSubType(I)Lcom/logitech/harmonylink/harmony/DeviceType;
    .locals 3
    .parameter "subType"

    .prologue
    .line 104
    sget-object v1, Lcom/logitech/harmonylink/harmony/DeviceType;->subTypeMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/harmony/DeviceType;

    .line 105
    .local v0, d:Lcom/logitech/harmonylink/harmony/DeviceType;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 108
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/logitech/harmonylink/harmony/DeviceType;->OTHER:Lcom/logitech/harmonylink/harmony/DeviceType;

    goto :goto_0
.end method

.method public static getSubTypeNameFromTypeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "typeName"

    .prologue
    .line 114
    sget-object v1, Lcom/logitech/harmonylink/harmony/DeviceType;->reverseStringMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 116
    .local v0, subTypeName:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 117
    const-string v0, "AVR"

    .line 120
    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/DeviceType;
    .locals 1
    .parameter "name"

    .prologue
    .line 20
    const-class v0, Lcom/logitech/harmonylink/harmony/DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/logitech/harmonylink/harmony/DeviceType;

    return-object p0
.end method

.method public static final values()[Lcom/logitech/harmonylink/harmony/DeviceType;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/logitech/harmonylink/harmony/DeviceType;->$VALUES:[Lcom/logitech/harmonylink/harmony/DeviceType;

    invoke-virtual {v0}, [Lcom/logitech/harmonylink/harmony/DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/logitech/harmonylink/harmony/DeviceType;

    return-object v0
.end method


# virtual methods
.method public getFriendlyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/DeviceType;->friendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/DeviceType;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTypes()[I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/DeviceType;->mSubTypes:[I

    return-object v0
.end method

.method public isAvr()Z
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/logitech/harmonylink/harmony/DeviceType;->AVR:Lcom/logitech/harmonylink/harmony/DeviceType;

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/harmony/DeviceType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCustomizeKeyLearn()Z
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/logitech/harmonylink/harmony/DeviceType;->CUSTOMIZE_KEY_LEARN:Lcom/logitech/harmonylink/harmony/DeviceType;

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/harmony/DeviceType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOther()Z
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/logitech/harmonylink/harmony/DeviceType;->OTHER:Lcom/logitech/harmonylink/harmony/DeviceType;

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/harmony/DeviceType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isStb()Z
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/logitech/harmonylink/harmony/DeviceType;->STB:Lcom/logitech/harmonylink/harmony/DeviceType;

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/harmony/DeviceType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isTv()Z
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/logitech/harmonylink/harmony/DeviceType;->TV:Lcom/logitech/harmonylink/harmony/DeviceType;

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/harmony/DeviceType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setFriendlyName(Ljava/lang/String;)V
    .locals 0
    .parameter "friendlyName"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/DeviceType;->friendlyName:Ljava/lang/String;

    .line 80
    return-void
.end method
