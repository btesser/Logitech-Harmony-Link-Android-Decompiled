.class Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands$4;
.super Ljava/util/LinkedHashMap;
.source "CommonNormalizedCommands.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 99
    const-string v0, "A"

    const-string v1, "Yellow"

    invoke-virtual {p0, v0, v1}, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v0, "B"

    const-string v1, "Blue"

    invoke-virtual {p0, v0, v1}, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v0, "C"

    const-string v1, "Red"

    invoke-virtual {p0, v0, v1}, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v0, "D"

    const-string v1, "Green"

    invoke-virtual {p0, v0, v1}, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-void
.end method
