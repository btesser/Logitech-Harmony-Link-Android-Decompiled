.class public Lcom/logitech/harmonylink/harmony/KeycodeMapping;
.super Ljava/lang/Object;
.source "KeycodeMapping.java"


# static fields
.field public static final ENTER:I = 0x8

.field public static final SPACE:I = 0x20


# instance fields
.field public mButtonID:I

.field public mCommand:Lcom/logitech/harmonylink/harmony/Command;


# direct methods
.method public constructor <init>(ILcom/logitech/harmonylink/harmony/Command;)V
    .locals 0
    .parameter "buttonID"
    .parameter "command"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/logitech/harmonylink/harmony/KeycodeMapping;->mButtonID:I

    .line 19
    iput-object p2, p0, Lcom/logitech/harmonylink/harmony/KeycodeMapping;->mCommand:Lcom/logitech/harmonylink/harmony/Command;

    .line 20
    return-void
.end method


# virtual methods
.method public getCommand()Lcom/logitech/harmonylink/harmony/Command;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/KeycodeMapping;->mCommand:Lcom/logitech/harmonylink/harmony/Command;

    return-object v0
.end method
