.class public Lcom/logitech/harmonylink/harmony/Commands;
.super Ljava/util/ArrayList;
.source "Commands.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/logitech/harmonylink/harmony/Command;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/logitech/harmonylink/harmony/Command;)Z
    .locals 1
    .parameter "command"

    .prologue
    .line 9
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 6
    check-cast p1, Lcom/logitech/harmonylink/harmony/Command;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/logitech/harmonylink/harmony/Commands;->add(Lcom/logitech/harmonylink/harmony/Command;)Z

    move-result v0

    return v0
.end method
