.class Lcom/logitech/harmonylink/context/NoConnectionActivity$2;
.super Ljava/lang/Object;
.source "NoConnectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/NoConnectionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/NoConnectionActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/NoConnectionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/logitech/harmonylink/context/NoConnectionActivity$2;->this$0:Lcom/logitech/harmonylink/context/NoConnectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/logitech/harmonylink/context/NoConnectionActivity$2;->this$0:Lcom/logitech/harmonylink/context/NoConnectionActivity;

    const-class v1, Lcom/logitech/harmonylink/context/ConnectionHelpActivity;

    #calls: Lcom/logitech/harmonylink/context/NoConnectionActivity;->openActivityNoHistory(Ljava/lang/Class;)V
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/context/NoConnectionActivity;->access$000(Lcom/logitech/harmonylink/context/NoConnectionActivity;Ljava/lang/Class;)V

    .line 38
    return-void
.end method
