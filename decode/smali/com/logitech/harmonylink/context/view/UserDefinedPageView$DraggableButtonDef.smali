.class public Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DraggableButtonDef;
.super Lcom/logitech/harmonylink/view/widget/ButtonDef;
.source "UserDefinedPageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/context/view/UserDefinedPageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DraggableButtonDef"
.end annotation


# instance fields
.field private mAction:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "label"
    .parameter "vId"
    .parameter "keyval"
    .parameter "action"

    .prologue
    .line 975
    if-eqz p2, :cond_0

    move-object v0, p2

    :goto_0
    invoke-direct {p0, p1, v0, p3}, Lcom/logitech/harmonylink/view/widget/ButtonDef;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 976
    iput-object p5, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DraggableButtonDef;->mAction:Ljava/lang/String;

    .line 977
    return-void

    :cond_0
    move-object v0, p1

    .line 975
    goto :goto_0
.end method


# virtual methods
.method public getHashKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 980
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DraggableButtonDef;->mAction:Ljava/lang/String;

    return-object v0
.end method
